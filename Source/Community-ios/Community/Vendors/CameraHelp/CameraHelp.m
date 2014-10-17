//
//  CameraHelp.m
//  
//
//  Created by zcx. on 11-6-28.
//  Copyright 2011  . All rights reserved.
//

#import "CameraHelp.h"
//
//	Private
//
@interface CameraHelp (Private)

#if PRODUCER_HAS_VIDEO_CAPTURE
+(AVCaptureDevice *)cameraAtPosition:(AVCaptureDevicePosition)position;
- (void)startPreview;
- (void)stopPreview;
#endif /* NGN_PRODUCER_HAS_VIDEO_CAPTURE */

@end /* NGN_PRODUCER_HAS_VIDEO_CAPTURE */

@implementation CameraHelp (Private)

#if PRODUCER_HAS_VIDEO_CAPTURE
+ (AVCaptureDevice *)cameraAtPosition:(AVCaptureDevicePosition)position{
	NSArray *cameras = [AVCaptureDevice devicesWithMediaType:AVMediaTypeVideo];
    for (AVCaptureDevice *device in cameras){
        if (device.position == position){
            return device;
        }
    }
    return [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
}

- (void)startPreview{
	if(mCaptureSession && mPreview && mStarted){
		AVCaptureVideoPreviewLayer* previewLayer = [AVCaptureVideoPreviewLayer layerWithSession: mCaptureSession];
		previewLayer.frame = mPreview.bounds;
		previewLayer.videoGravity = AVLayerVideoGravityResizeAspectFill;
		//		if(previewLayer.orientationSupported){
		//			previewLayer.orientation = mOrientation;
		//		}
		
		[mPreview.layer addSublayer: previewLayer];
		
		if(![mCaptureSession isRunning]){
			[mCaptureSession startRunning];
		}
	}
}

- (void)stopPreview{
	if(mCaptureSession){		
		if([mCaptureSession isRunning]){
			[mCaptureSession stopRunning];
			
			// remove all sublayers
			if(mPreview){
				for(CALayer *ly in mPreview.layer.sublayers){
					if([ly isKindOfClass: [AVCaptureVideoPreviewLayer class]])
					{
						[ly removeFromSuperlayer];
						break;
					}
				}
			}
		}
	}
}
#endif /* NGN_PRODUCER_HAS_VIDEO_CAPTURE */
@end

@implementation CameraHelp
static CameraHelp* g_camera = 0;
- (id)init
{
	if(g_camera)
		return g_camera;
	else
	{
		if(self = [super init])
		{
			self->mWidth = 176;
			self->mWidth = 144;
			self->mFps = 15;
			self->mFrontCamera = YES;
			self->mStarted = NO;
			g_camera = self;
			outDelegate = nil;
		}
		return g_camera;
	}
}
-(void)dealloc
{
#if PRODUCER_HAS_VIDEO_CAPTURE
	[mCaptureSession release];
	[mCaptureDevice release];
	[mPreview release];
#endif
	[super dealloc];
}
+ (CameraHelp*)shareCameraHelp
{
	if(!g_camera)
		g_camera = [[CameraHelp alloc] init];
	return g_camera;
}
+ (void)closeCamera
{
	if(g_camera)
	{
		[g_camera dealloc];
		g_camera = nil;
	}
}
- (void)prepareVideoCapture:(int) width andHeight: (int)height andFps: (int) fps andFrontCamera:(BOOL) bfront andPreview:(UIView*) view
{
	self->mWidth = width;
	self->mHeight = height;
	self->mFps = fps;
	self->mFrontCamera = bfront;
	if(view)
		self->mPreview = [view retain];
#if PRODUCER_HAS_VIDEO_CAPTURE	
	if([mCaptureSession isRunning])
	{
		[self stopVideoCapture];
		[self startVideoCapture];
	}
#endif
}
- (void)startVideoCapture
{
#if PRODUCER_HAS_VIDEO_CAPTURE	
	//防锁
	[[UIApplication sharedApplication] setIdleTimerDisabled:YES];
	//打开摄像设备，并开始捕抓图像
	//[labelState setText:@"Starting Video stream"];
	if(mCaptureDevice || mCaptureSession)
	{
		NSLog(@"Already capturing");
		return;
	}
	
	if((mCaptureDevice = [CameraHelp cameraAtPosition:mFrontCamera? AVCaptureDevicePositionFront:AVCaptureDevicePositionBack]) == nil)
	{
		NSLog(@"Failed to get valide capture device");
		return;
	}
	
	NSError *error = nil;
    AVCaptureDeviceInput *videoInput = [AVCaptureDeviceInput deviceInputWithDevice:mCaptureDevice error:&error];
    if (!videoInput)
	{
		NSLog(@"Failed to get video input");
		mCaptureDevice = nil;
        return;
    }
	
	mCaptureSession = [[AVCaptureSession alloc] init];
	if(mHeight <= 144){
		mCaptureSession.sessionPreset = AVCaptureSessionPresetLow;
	}
	else if(mHeight <= 360){
		mCaptureSession.sessionPreset = AVCaptureSessionPresetMedium;
	}
	else if(mHeight <= 480){
		mCaptureSession.sessionPreset = AVCaptureSessionPresetHigh;
	}
	else {
		mCaptureSession.sessionPreset = AVCaptureSessionPreset640x480;
	}
    [mCaptureSession addInput:videoInput];
	
	// Currently, the only supported key is kCVPixelBufferPixelFormatTypeKey. Recommended pixel format choices are 
	// kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange or kCVPixelFormatType_32BGRA. 
	// On iPhone 3G, the recommended pixel format choices are kCVPixelFormatType_422YpCbCr8 or kCVPixelFormatType_32BGRA.
	//
    AVCaptureVideoDataOutput *avCaptureVideoDataOutput = [[AVCaptureVideoDataOutput alloc] init];
    NSDictionary *settings = [[NSDictionary alloc] initWithObjectsAndKeys:
							  // [NSNumber numberWithUnsignedInt:kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange], kCVPixelBufferPixelFormatTypeKey,
							  [NSNumber numberWithInt: mWidth], (id)kCVPixelBufferWidthKey,
                              [NSNumber numberWithInt: mHeight], (id)kCVPixelBufferHeightKey,
							  nil];

    avCaptureVideoDataOutput.videoSettings = settings;
	[settings release];
    avCaptureVideoDataOutput.minFrameDuration = CMTimeMake(1, mFps);
	avCaptureVideoDataOutput.alwaysDiscardsLateVideoFrames = YES;
	
	
    /*We create a serial queue to handle the processing of our frames*/
    dispatch_queue_t queue = dispatch_queue_create("com.gh.cecall", NULL);
    [avCaptureVideoDataOutput setSampleBufferDelegate:self queue:queue];
    [mCaptureSession addOutput:avCaptureVideoDataOutput];
	[settings release];
    [avCaptureVideoDataOutput release];
    dispatch_release(queue);
	mFirstFrame = YES;
	mStarted = YES;
	
	//start preview
	[self startPreview];
#endif
}
- (void)stopVideoCapture
{
#if PRODUCER_HAS_VIDEO_CAPTURE	
	if(mCaptureSession){
		[mCaptureSession stopRunning];
		[mCaptureSession release], mCaptureSession = nil;
		NSLog(@"Video capture stopped");
	}
	[mCaptureDevice release], mCaptureDevice = nil;
	
	if(mPreview){
		for (UIView *view in mPreview.subviews) {
			[view removeFromSuperview];
		}
	}
#endif
}



- (BOOL)setFrontCamera
{
	if(mFrontCamera)
		return YES;
	[self stopVideoCapture];
	mFrontCamera = YES;
	[self startVideoCapture];
	return YES;
}

- (BOOL)setBackCamera{
	if(!mFrontCamera)
		return YES;
	[self stopVideoCapture];
	mFrontCamera = NO;
	[self startVideoCapture];
	return YES;
}

- (void) setPreview: (UIView*)preview{
#if PRODUCER_HAS_VIDEO_CAPTURE	
	if(preview == nil){
		// stop preview
		[self stopPreview];
		// remove layers
		if(mPreview){
			for(CALayer *ly in mPreview.layer.sublayers){
				if([ly isKindOfClass: [AVCaptureVideoPreviewLayer class]]){
					[ly removeFromSuperlayer];
					break;
				}
			}
			[mPreview release], mPreview = nil;
		}
	}
	else {
		//start preview
		[mPreview release];
		if((mPreview = [preview retain])){
			[self startPreview];
		}
	}
	
#endif /* NGN_PRODUCER_HAS_VIDEO_CAPTURE */
}
- (void)setVideoDataOutputBuffer:(id<CameraHelpDelegate>)delegate
{
	outDelegate = delegate;
}
#pragma mark -
#pragma mark AVCaptureVideoDataOutputSampleBufferDelegate
#if PRODUCER_HAS_VIDEO_CAPTURE	
- (void)captureOutput:(AVCaptureOutput *)captureOutput didOutputSampleBuffer:(CMSampleBufferRef)sampleBuffer fromConnection:(AVCaptureConnection *)connection 
{
	//捕捉数据输出 要怎么处理虽你便
	CVImageBufferRef imageBuffer = CMSampleBufferGetImageBuffer(sampleBuffer);
    // Lock the image buffer
    //CVPixelBufferLockBaseAddress(imageBuffer,0);
	if(CVPixelBufferLockBaseAddress(imageBuffer, 0) == kCVReturnSuccess)
	{
        UInt8 *bufferPtr = (UInt8 *)CVPixelBufferGetBaseAddressOfPlane(imageBuffer,0);
        size_t buffeSize = CVPixelBufferGetDataSize(imageBuffer);
		if(self->mFirstFrame)
		{ 
			//第一次数据要求：宽高，类型
			//size_t bytesPerRow = CVPixelBufferGetBytesPerRow(imageBuffer);
			size_t width = CVPixelBufferGetWidth(imageBuffer);
			size_t height = CVPixelBufferGetHeight(imageBuffer);
			
			int pixelFormat = CVPixelBufferGetPixelFormatType(imageBuffer);
			switch (pixelFormat) {
				case kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange:
					//engine->srcFormat = VideoFormat_NV12;//PIX_FMT_NV12;
					NSLog(@"Capture pixel format=NV12");
					break;
				case kCVPixelFormatType_422YpCbCr8:
					//engine->srcFormat = VideoFormat_UYVY;//PIX_FMT_UYVY422;
					NSLog(@"Capture pixel format=UYUY422");
					break;
				default:
					//engine->srcFormat = VideoFormat_BGR32;//PIX_FMT_RGB32;
					NSLog(@"Capture pixel format=RGB32");
			}
			mFirstFrame = NO;
		}
		//send data
		//engine->SendVideoFrame((unsigned char*)bufferPtr,buffeSize);
		if(outDelegate)
			[outDelegate VideoDataOutputBuffer:(char*)bufferPtr dataSize:buffeSize];
		/*We unlock the buffer*/
        CVPixelBufferUnlockBaseAddress(imageBuffer, 0);	
		
    }
}
#endif
@end
