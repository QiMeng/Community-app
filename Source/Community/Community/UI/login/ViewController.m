//
//  ViewController.m
//  Community
//
//  Created by QiMENG on 14-9-26.
//  Copyright (c) 2014年 QiMENG_LYS. All rights reserved.
//

#import "ViewController.h"

#import "SverviceBase.h"

@interface ViewController () <UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
   
    nameTextField.text = [kQMUserInfo getUserName];
    pwsTextField.text = [kQMUserInfo getPassword];
    
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    [kSverviceInstance clientLogin:nameTextField.text password:pwsTextField.text callBack:self];
}

- (void)requestDidCode:(long)code msg:(NSString *)msg data:(id)sender{
    
    DLog(@"%@",sender);
    
    if (code == 200) {
        
        kQMUserInfo.userName = nameTextField.text;
        kQMUserInfo.userPws = pwsTextField.text;
        [kQMUserInfo saveUserName:nameTextField.text Pws:pwsTextField.text];
        [self performSegueWithIdentifier:@"HomeViewController" sender:self];
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
