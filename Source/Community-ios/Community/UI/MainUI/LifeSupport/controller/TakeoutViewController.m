//
//  TakeoutViewController.m
//  Community
//
//  Created by 永生刘 on 14/10/10.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "TakeoutViewController.h"
#import "TakeoutViewController01.h"
@interface TakeoutViewController ()

@end

@implementation TakeoutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self leftDefaultNavBar];
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
        TakeoutViewController01* ctrl = segue.destinationViewController;
        
        switch (((UIButton*)sender).tag) {
            case 100:
                ctrl.title = @"可乐";
                break;
            case 101:
                ctrl.title = @"啤酒";
                break;
            case 102:
                ctrl.title = @"王老吉";
                break;
            case 103:
                ctrl.title = @"菊花茶";
                break;
            case 104:
                ctrl.title = @"泡面";
                break;
            case 105:
                ctrl.title = @"馒头";
                break;
            case 106:
                ctrl.title = @"泡椒凤爪";
                break;
            case 107:
                ctrl.title = @"花生";
                break;
            case 108:
                ctrl.title = @"豆腐干";
                break;
                
            default:
                break;
        }

    }
    
    
}

@end
