//
//  VoteViewController02.m
//  Community
//
//  Created by 永生刘 on 14/10/16.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "VoteViewController02.h"

@interface VoteViewController02 ()

@end

@implementation VoteViewController02

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self leftDefaultNavBar];
    
    [singleBtn setBackgroundImage:[UIImage createImageWithColor:RGBA(184, 209, 226, 1)] forState:UIControlStateNormal];
    [singleBtn setBackgroundImage:[UIImage createImageWithColor:RGBA(97, 191, 253, 1)] forState:UIControlStateSelected];
    
    [manyBtn setBackgroundImage:[UIImage createImageWithColor:RGBA(184, 209, 226, 1)] forState:UIControlStateNormal];
    [manyBtn setBackgroundImage:[UIImage createImageWithColor:RGBA(97, 191, 253, 1)] forState:UIControlStateSelected];
    
    
    
    [self touchBtn:singleBtn];
}

- (IBAction)touchBtn:(UIButton *)sender {
    
    if (sender == singleBtn) {
        singleBtn.selected = YES;
        manyBtn.selected = NO;
    }else {
        manyBtn.selected = YES;
        singleBtn.selected = NO;
    }
}

- (IBAction)touchRelease:(id)sender {
    
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
