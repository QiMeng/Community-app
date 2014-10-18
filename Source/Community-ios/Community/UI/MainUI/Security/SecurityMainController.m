//
//  SecurityMainController.m
//  Community
//
//  Created by QiMENG on 14-9-26.
//  Copyright (c) 2014年 QiMENG_LYS. All rights reserved.
//

#import "SecurityMainController.h"
#import "UnlockViewController.h"

#import "SecurityWebcamController.h"

@interface SecurityMainController ()

@end

@implementation SecurityMainController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    self.navigationController.navigationBarHidden = NO;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    myScrollView.frame = CGRectMake(0, 0, myScrollView.width, self.view.height - 64);
    
    
    
    
}

#pragma mark - 呼叫
- (IBAction)touchCall:(id)sender {
    
    [self performSegueWithIdentifier:@"UnlockViewController" sender:@0];
}

#pragma mark - 摄像头
- (IBAction)touchWebcam:(id)sender {
    [self performSegueWithIdentifier:@"UnlockViewController" sender:@1];
    
}





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    UnlockViewController * ctrl = segue.destinationViewController;
    if ([ctrl  isKindOfClass:[UnlockViewController class]]) {
        ctrl.typeInt = [sender integerValue];
    }
    
}


@end
