//
//  ActorViewController01.m
//  Community
//
//  Created by 永生刘 on 14/10/16.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "ActorViewController01.h"

@interface ActorViewController01 ()

@end

@implementation ActorViewController01

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self leftDefaultNavBar];
    comentTF.placeholder = @"输入活动内容";
    
}
- (IBAction)touchRelease:(id)sender {
    
    if (!comentTF.text.length) {
        [self showErrorString:@"请输入活动内容"];
        return;
    }
    
    [self showSuccessString:@"发布成功"];
    
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
