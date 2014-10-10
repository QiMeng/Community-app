//
//  TakeoutViewController.m
//  Community
//
//  Created by 永生刘 on 14/10/10.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "TakeoutViewController.h"

@interface TakeoutViewController ()

@end

@implementation TakeoutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)touchButton:(UIButton *)sender {
    
    [self performSegueWithIdentifier:@"TakeoutViewController01" sender:sender];
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if ([sender isKindOfClass:[UIButton class]]) {
        UIViewController* ctrl = segue.destinationViewController;
        ctrl.title = ((UIButton*)sender).titleLabel.text;
    }
    
    
}

@end
