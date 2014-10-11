//
//  FeedbackViewController.m
//  Community
//
//  Created by 永生刘 on 14/10/9.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "FeedbackViewController.h"

@interface FeedbackViewController ()

@end

@implementation FeedbackViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    contentText.placeholder = @"我要啰嗦两句.";
    
}

- (IBAction)touchSubmit:(id)sender {

//    [contentText resignFirstResponder];
    
    if (contentText.text.length){
        [self showSuccessString:@"提交成功"];
    }
    else{
        [self showErrorString:@"内容不能为空"];
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
