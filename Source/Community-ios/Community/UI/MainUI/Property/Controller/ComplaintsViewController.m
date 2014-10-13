//
//  ComplaintsViewController.m
//  Community
//
//  Created by 永生刘 on 14/10/13.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "ComplaintsViewController.h"

@interface ComplaintsViewController ()

@end

@implementation ComplaintsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self leftDefaultNavBar];
    contentText.placeholder = @"投诉内容";
}


- (IBAction)touchSubmit:(id)sender {
    
    if (!contentText.text.length) {
        [self showErrorString:@"请填写内容."];
        return;
    }
    [self showSuccessString:@"提交成功"];
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
