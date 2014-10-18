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


- (IBAction)touchLong:(id)sender {
    
    [self showSuccessString:@"发送成功"];
    
    
}


- (IBAction)touchCall:(UIButton *)sender {
    
    DLog(@"%@",sender.titleLabel.text);
    //不返回应用
    NSMutableString * str=[[NSMutableString alloc] initWithFormat:@"tel:%@",sender.titleLabel.text];
    //    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:str]];
    
    //返回应用
    UIWebView * callWebview = [[UIWebView alloc] init];
    [callWebview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:str]]];
    [self.view addSubview:callWebview];
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
