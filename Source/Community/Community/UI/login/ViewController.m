//
//  ViewController.m
//  Community
//
//  Created by QiMENG on 14-9-26.
//  Copyright (c) 2014年 QiMENG_LYS. All rights reserved.
//

#import "ViewController.h"

#import "SverviceBase.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    [kSverviceInstance clientLogin:@"账号" password:@"密码" callBack:self];
}

- (void)requestDidFinish:(id)sender {
    
    DLog(@"%@",sender);
    
    if (sender) {
        [self performSegueWithIdentifier:@"HomeViewController" sender:self];
    }else {
        
        [self performSegueWithIdentifier:@"SignUpViewController" sender:self];
        
    }
    
    
}

- (IBAction)touchLogin:(id)sender {
    
    [self performSegueWithIdentifier:@"SignUpViewController" sender:self];
}





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
