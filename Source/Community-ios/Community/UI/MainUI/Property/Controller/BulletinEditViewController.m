//
//  BulletinEditViewController.m
//  Community
//
//  Created by 永生刘 on 14/10/13.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "BulletinEditViewController.h"

@interface BulletinEditViewController () <UITextFieldDelegate>

@end

@implementation BulletinEditViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self leftDefaultNavBar];
    
    contentTF.placeholder = @"这里可以输入公告详情";
    
    updateTime.text = [NSString currentDefaultTime];
    
}

- (IBAction)touchComplete:(id)sender {
    
    if (!titleTF.text.length) {
        [self showErrorString:@"请输入标题"];
        return;
    }
    
    [self showSuccessString:@"上传成功"];
    [self.navigationController popViewControllerAnimated:YES];
}



- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}


-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    if ([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        return NO;
    }
    return YES;
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
