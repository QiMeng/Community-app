//
//  AddressViewController.m
//  Community
//
//  Created by 永生刘 on 14/10/11.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "AddressViewController.h"

@interface AddressViewController ()

@end

@implementation AddressViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self leftDefaultNavBar];
}

- (IBAction)touchSave:(id)sender {
    
    if (communityTF.text.length) {
        
        [self showSuccessString:@"保存成功"];
        
    }else {
        
        [self showErrorString:@"小区不能为空"];
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
