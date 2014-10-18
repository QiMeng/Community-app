//
//  CallViewController04.m
//  Community
//
//  Created by 永生刘 on 14/10/18.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "CallViewController04.h"

@interface CallViewController04 ()

@end

@implementation CallViewController04

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self leftDefaultNavBar];
}
- (IBAction)touchSave:(id)sender {
    
    [self showSuccessString:@"保存成功"];
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
