//
//  QMViewController.m
//  Community
//
//  Created by QiMENG on 14-9-26.
//  Copyright (c) 2014年 QiMENG_LYS. All rights reserved.
//

#import "QMViewController.h"

@interface QMViewController ()

@end

@implementation QMViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.view.backgroundColor = RGBA(255, 255, 255, 1);
    
}

- (void)showWithStatus:(NSString *)string {
    [SVProgressHUD showWithStatus:string maskType:SVProgressHUDMaskTypeBlack];
}
- (void)showErrorString:(NSString *)string {
    [SVProgressHUD showErrorWithStatus:string ];
}
- (void)showSuccessString:(NSString *)string {
    
    [SVProgressHUD showSuccessWithStatus:string];
}
- (void)dismiss {
    [SVProgressHUD dismiss];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
