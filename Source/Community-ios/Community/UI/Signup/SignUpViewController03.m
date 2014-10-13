//
//  SignUpViewController03.m
//  Community
//
//  Created by 永生刘 on 14/10/13.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "SignUpViewController03.h"

@interface SignUpViewController03 ()

@end

@implementation SignUpViewController03

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self leftDefaultNavBar];
    
    
    kQMUserInfo.area = kQMUserInfo.signarea;
    kQMUserInfo.community = kQMUserInfo.signcommunity;
    kQMUserInfo.floor = kQMUserInfo.signfloor;
    kQMUserInfo.unit = kQMUserInfo.signunit;
    
}

- (IBAction)touchComplete:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
    
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
