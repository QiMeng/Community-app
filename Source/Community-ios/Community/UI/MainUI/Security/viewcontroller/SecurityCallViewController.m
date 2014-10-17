//
//  SecurityCallViewController.m
//  Community
//
//  Created by 永生刘 on 14/10/17.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "SecurityCallViewController.h"

@interface SecurityCallViewController ()

@end

@implementation SecurityCallViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self leftDefaultNavBar];
    
    self.navigationController.navigationBarHidden = NO;
    
}

- (void)leftNavBar:(id)sender{
    [self.navigationController popToRootViewControllerAnimated:YES];
}

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
