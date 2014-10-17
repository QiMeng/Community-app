//
//  SecurityWebcamController.m
//  Community
//
//  Created by 永生刘 on 14/10/17.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "SecurityWebcamController.h"
#import "CameraHelp.h"
@interface SecurityWebcamController () //<CameraHelpDelegate>

@end

@implementation SecurityWebcamController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self leftDefaultNavBar];
    
    self.navigationController.navigationBarHidden = NO;
    
    [[CameraHelp shareCameraHelp] setPreview:self.view];
    //捕获数据输出到本地
    [[CameraHelp shareCameraHelp] setVideoDataOutputBuffer:self];
    //开始捕获
    [[CameraHelp shareCameraHelp] startVideoCapture];
    
    
}
- (void)leftNavBar:(id)sender{
    
    //停止捕获
    [[CameraHelp shareCameraHelp] stopVideoCapture];
    //关闭输出
    [[CameraHelp shareCameraHelp] setVideoDataOutputBuffer:nil];
    
    [self.navigationController popToRootViewControllerAnimated:YES];
}

//-(void)VideoDataOutputBuffer:(char*)videoBuffer dataSize:(int)size {
//    
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
