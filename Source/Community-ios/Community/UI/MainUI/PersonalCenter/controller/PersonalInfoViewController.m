//
//  PersonalInfoViewController.m
//  Community
//
//  Created by 永生刘 on 14/10/10.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "PersonalInfoViewController.h"

@interface PersonalInfoViewController ()

@end

@implementation PersonalInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - 修改头像
- (IBAction)touchHeaderImage:(id)sender {
    
    SIAlertView * alert = [[SIAlertView alloc]initWithTitle:@"" andMessage:@"选择"];
    [alert addButtonWithTitle:@"拍照" type:SIAlertViewButtonTypeDefault handler:^(SIAlertView *alertView) {
        
    }];
    
    [alert addButtonWithTitle:@"照片库" type:SIAlertViewButtonTypeDefault handler:^(SIAlertView *alertView) {
        
    }];
    
    [alert addButtonWithTitle:@"取消" type:SIAlertViewButtonTypeCancel handler:^(SIAlertView *alertView) {
        
    }];
    
    [alert show];
}

#pragma mark - 保存
- (IBAction)touchSave:(id)sender {
    
    if (nickNameTF.text.length) {
        
        [self showSuccessString:@"保存成功"];
        
    }else {
        
        [self showErrorString:@"昵称不能为空"];
    }
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
