//
//  ViewController.m
//  Community
//
//  Created by QiMENG on 14-9-26.
//  Copyright (c) 2014年 QiMENG_LYS. All rights reserved.
//

#import "ViewController.h"

#import "ApplyViewController.h"
#import "SverviceBase.h"

@interface ViewController () <UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [loginBtn viewLineColor:RGBA(255, 255, 255, 1) borderWidth:1 cornerRadius:0];
    
    [signUpBtn viewLineColor:RGBA(255, 255, 255, 1) borderWidth:1 cornerRadius:0];
    
    
    nameTextField.text = [kQMUserInfo getUserName];
    pwsTextField.text = [kQMUserInfo getPassword];
    
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
//    if (nameTextField.text.length && pwsTextField.text.length) {
//        [kSverviceInstance clientLogin:nameTextField.text password:pwsTextField.text callBack:self];
//    }

}

- (void)requestDidCode:(long)code msg:(NSString *)msg data:(id)sender{
    
    DLog(@"%@",sender);
    
    if (code == 200) {
        
        kQMUserInfo.userName = nameTextField.text;
        kQMUserInfo.userPws = pwsTextField.text;
        [kQMUserInfo saveUserName:nameTextField.text Pws:pwsTextField.text];
        
        [[EaseMob sharedInstance].chatManager asyncLoginWithUsername:nameTextField.text
                                                            password:pwsTextField.text
                                                          completion:^(NSDictionary *loginInfo,
                                                                       EMError *error) {
                                                              [self dismiss];
                                                              DLog(@"loginInfo--%@",loginInfo);
                                                              
                                                              if (!error) {
                                                                  
                                                                  [[ApplyViewController shareController] loadDataSourceFromLocalDB];
                                                                  
//                                                                  [self performSegueWithIdentifier:@"HomeViewController" sender:self];
                                                              }
                                                              
                                                              [self performSegueWithIdentifier:@"HomeViewController" sender:self];
                                                              
                                                              
                                                          } onQueue:nil];
        
        
        
    }else {
        [self showErrorString:msg];
    }
    
}

- (IBAction)touchLogin:(id)sender {
    
    if (!nameTextField.text.length) {
        
        [self showErrorString:@"请输入账号"];
    }else if (!pwsTextField.text.length) {
       
        [self showErrorString:@"请输入密码"];
    }else {

        [self showWithStatus:@"正在登录..."];
//        [self showHudInView:self.view hint:@"正在登录..."];
        [kSverviceInstance clientLogin:nameTextField.text password:pwsTextField.text callBack:self];
    }
    
    
}



- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
