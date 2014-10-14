//
//  QMPhotoScrollView.m
//  Community
//
//  Created by 永生刘 on 14/10/13.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "QMPhotoScrollView.h"
#define  INSETS 10
#import <QuartzCore/QuartzCore.h>

@implementation QMPhotoScrollView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        if (!self.images) {
            self.images = [NSMutableArray array];
        }
        
        if (!plusBtn) {
            plusBtn = [UIButton allocButtonFrame:CGRectMake(0, 0, self.height, self.height)
                                     normalTitle:@""
                                   selectedTitle:@""
                                normalTitleColor:nil
                              selectedTitleColor:nil
                                     normalImage:[UIImage imageNamed:@"property_btn_add_nor"]
                                   selectedImage:nil
                                          target:self
                                        selector:@selector(addPic:)];
            plusBtn.backgroundColor  = [UIColor blueColor];
            [self addSubview:plusBtn];
        }
        
        
        
        [self refreshScrollView];
    }
    return self;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    

}

- (void)refreshScrollView
{
    CGFloat width=(self.height+20)*(self.images.count)<(self.width)?self.width:self.height+self.images.count*(self.height+10);
    
    CGSize contentSize=CGSizeMake(width, self.height);
    [self setContentSize:contentSize];
    [self setContentOffset:CGPointMake(width<self.width?0:width-self.width, 0) animated:YES];
    
}

- (void)clearPics:(id)sender {
    for (UIImageView *img in self.images)
    {
        [img removeFromSuperview];
    }
    [self.images removeAllObjects];
    
    CABasicAnimation *positionAnim=[CABasicAnimation animationWithKeyPath:@"position"];
    [positionAnim setFromValue:[NSValue valueWithCGPoint:CGPointMake(plusBtn.center.x, plusBtn.center.y)]];
    [positionAnim setToValue:[NSValue valueWithCGPoint:CGPointMake(INSETS+self.height/2.0, plusBtn.center.y)]];
    [positionAnim setDelegate:self];
    [positionAnim setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    [positionAnim setDuration:0.25f];
    
    [plusBtn.layer addAnimation:positionAnim forKey:nil];
    
    [plusBtn setCenter:CGPointMake(INSETS+self.height/2.0, plusBtn.center.y)];
    [self refreshScrollView];
}
- (IBAction)addPic:(id)sender {
    
    UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"" message:@"选择" delegate:self
                                          cancelButtonTitle:@"取消"
                                          otherButtonTitles:@"相册",@"拍照", nil];
    
    [alert show];
    

}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"clickButtonAtIndex:%d",buttonIndex);
    switch (buttonIndex) {
        case 1:
            [self touchAlbumBtn];
            break;
        case 2:
            [self touchPicturesBtn];
            break;
        default:
            break;
    }
    
    
}
- (void) touchAlbumBtn {
    DLog(@"调用相册");

    self.picker = [[UIImagePickerController alloc]init];
    self.picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    self.picker.delegate = self;
    [_parentViewController presentViewController:self.picker animated:YES completion:nil];
}
- (void) touchPicturesBtn {
    DLog(@"调用拍照");
    
    if(![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
    {

//        [self show]
        return;
    }
    
    
    self.picker = [[UIImagePickerController alloc]init];
    self.picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    self.picker.delegate = self;
    
    [_parentViewController presentViewController:self.picker animated:YES completion:nil];

}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    
    DLog(@"============================info:%@",info);
    
    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    
    //移动添加按钮
    CABasicAnimation *positionAnim=[CABasicAnimation animationWithKeyPath:@"position"];
    [positionAnim setFromValue:[NSValue valueWithCGPoint:CGPointMake(plusBtn.center.x, plusBtn.center.y)]];
    [positionAnim setToValue:[NSValue valueWithCGPoint:CGPointMake(plusBtn.center.x+INSETS+self.height, plusBtn.center.y)]];
    [positionAnim setDelegate:self];
    [positionAnim setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    [positionAnim setDuration:0.25f];
    [plusBtn.layer addAnimation:positionAnim forKey:nil];
    [plusBtn setCenter:CGPointMake(plusBtn.center.x+INSETS+self.height, plusBtn.center.y)];
    
    //添加图片
    UIImageView *aImageView=[[UIImageView alloc]initWithImage:image];
    aImageView.contentMode = UIViewContentModeScaleAspectFill;
    aImageView.backgroundColor = [UIColor greenColor];
    [aImageView setFrame:CGRectMake(INSETS-self.height-20, 0, self.height, self.height)];
    [self.images addObject:aImageView];
    [self addSubview:aImageView];
    
    for (UIImageView *img in self.images) {
        
        CABasicAnimation *positionAnim=[CABasicAnimation animationWithKeyPath:@"position"];
        [positionAnim setFromValue:[NSValue valueWithCGPoint:CGPointMake(img.center.x, img.center.y)]];
        [positionAnim setToValue:[NSValue valueWithCGPoint:CGPointMake(img.center.x+INSETS+self.height, img.center.y)]];
        [positionAnim setDelegate:self];
        [positionAnim setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
        [positionAnim setDuration:0.25f];
        [img.layer addAnimation:positionAnim forKey:nil];
        
        [img setCenter:CGPointMake(img.center.x+INSETS+self.height, img.center.y)];
    }
    
    [self refreshScrollView];
    
    
    
    [_parentViewController dismissViewControllerAnimated:YES completion:nil];

    
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    [self.picker dismissViewControllerAnimated:YES completion:nil];

}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
