//
//  FilterViewController.m
//  Community
//
//  Created by 永生刘 on 14/10/16.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "FilterViewController.h"

@interface FilterViewController ()

@end

@implementation FilterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self leftDefaultNavBar];
    
    [btn1 setBackgroundImage:[UIImage createImageWithColor:RGBA(184, 209, 226, 1)] forState:UIControlStateNormal];
    [btn1 setBackgroundImage:[UIImage createImageWithColor:RGBA(97, 191, 253, 1)] forState:UIControlStateSelected];
    
    [btn2 setBackgroundImage:[UIImage createImageWithColor:RGBA(184, 209, 226, 1)] forState:UIControlStateNormal];
    [btn2 setBackgroundImage:[UIImage createImageWithColor:RGBA(97, 191, 253, 1)] forState:UIControlStateSelected];
    
    [btn3 setBackgroundImage:[UIImage createImageWithColor:RGBA(184, 209, 226, 1)] forState:UIControlStateNormal];
    [btn3 setBackgroundImage:[UIImage createImageWithColor:RGBA(97, 191, 253, 1)] forState:UIControlStateSelected];
    
    [btn4 setBackgroundImage:[UIImage createImageWithColor:RGBA(184, 209, 226, 1)] forState:UIControlStateNormal];
    [btn4 setBackgroundImage:[UIImage createImageWithColor:RGBA(97, 191, 253, 1)] forState:UIControlStateSelected];
    
    
}


- (IBAction)touchBtn:(UIButton *)sender {
    sender.selected = !sender.selected;
}


- (IBAction)touchOK:(id)sender {
    
    [self showSuccessString:@"筛选成功"];
    [self.navigationController popViewControllerAnimated:YES];
    
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
