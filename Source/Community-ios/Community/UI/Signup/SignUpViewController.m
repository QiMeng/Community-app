//
//  SignUpViewController.m
//  Community
//
//  Created by QiMENG on 14-9-26.
//  Copyright (c) 2014年 QiMENG_LYS. All rights reserved.
//

#import "SignUpViewController.h"

@interface SignUpViewController ()
@property (retain, nonatomic)  NSTimer *timer;
@end

@implementation SignUpViewController

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
    
    [getCodeBtn viewLineColor:RGBA(255, 255, 255, 1) borderWidth:1 cornerRadius:0];
    
    [agreeBtn viewLineColor:RGBA(255, 255, 255, 1) borderWidth:1 cornerRadius:0];
    
    
}

#pragma mark - 退出
- (IBAction)touchBack:(id)sender{
    
    [self dismissViewControllerAnimated:YES completion:^{}];
    
}
#pragma mark - 获取验证码
- (IBAction)getCodeBtn:(id)sender {
    
    
    if (!phoneTF.text.length) {
        [self showErrorString:@"请输入手机号码"];
        return;
    }
    
    getCodeBtn.enabled = NO;
    [getCodeBtn viewLineColor:RGBA(206, 220, 239, 1) borderWidth:1 cornerRadius:0];
    getCodeBtn.tag = 60;
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(onTimer) userInfo:nil repeats:YES];
    
    codeTF.hidden = lineView.hidden = agreeBtn.hidden = NO;
    [codeTF becomeFirstResponder];
}

-(void)onTimer{
    getCodeBtn.tag -= 1;
    if (getCodeBtn.tag == 0) {
        getCodeBtn.enabled = YES;
        [getCodeBtn setTitle:@"发送验证码" forState:UIControlStateNormal];
        [getCodeBtn viewLineColor:RGBA(255, 255, 255, 1) borderWidth:1 cornerRadius:0];
        [self.timer invalidate];
    }else{
        getCodeBtn.titleLabel.text = [NSString stringWithFormat:@"重新发送验证码       %d", getCodeBtn.tag];

    }
}



#pragma mark - 同意用户协议:判断验证码是否正确
- (IBAction)agreeAgreement:(id)sender {
    
    if (!codeTF.text.length) {
        [self showErrorString:@"验证码"];
        return;
    }

    [self performSegueWithIdentifier:@"SignUpViewController01" sender:self];
    
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
