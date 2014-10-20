//
//  ReplyViewController01.m
//  Community
//
//  Created by 永生刘 on 14/10/20.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "ReplyViewController01.h"

@interface ReplyViewController01 ()

@end

@implementation ReplyViewController01

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self leftDefaultNavBar];
    contentTF.placeholder = @"输入内容";
    [contentTF becomeFirstResponder];
    

    UIButton *button = nil;

    button = [UIButton allocButtonFrame:CGRectMake(0, 0, 60, 44)
                            normalTitle:@"发布"
                          selectedTitle:nil
                       normalTitleColor:[UIColor whiteColor]
                     selectedTitleColor:nil
                        backgroundColor:nil
                              titleFont:[UIFont fontWithName:kBaseFont size:15]//[UIFont boldSystemFontOfSize:15]
                            normalImage:nil
                          selectedImage:nil
                          normalBgImage:nil
                        selectedBgImage:nil
                                 target:self
                               selector:@selector(touchRight:)
                       autoresizingMask:UIViewAutoresizingNone];
    
    UIBarButtonItem *barBtn = [[UIBarButtonItem alloc]initWithCustomView:button];
    
    self.navigationItem.rightBarButtonItem = barBtn;
}
- (void)touchRight:(id)sender {
    
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
