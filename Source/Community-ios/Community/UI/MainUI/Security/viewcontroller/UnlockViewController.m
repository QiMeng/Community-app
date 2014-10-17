//
//  UnlockViewController.m
//  Community
//
//  Created by 永生刘 on 14/10/17.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "UnlockViewController.h"
#import "NineGridUnlockView.h"
#import "SecurityCallViewController.h"

@interface UnlockViewController ()<NinGridUnlockViewDelegate>

@end

@implementation UnlockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationController.navigationBarHidden = YES;
    
    
    NineGridUnlockView* v = [[NineGridUnlockView alloc] initWithFrame:CGRectMake(0, view01.bottom, self.view.width, self.view.width)];
    //v.strokeColor = [UIColor greenColor];
    v.delegate = self;
    [self.view addSubview:v];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)unlockerView:(NineGridUnlockView *)unlockerView didFinished:(NSArray *)points{
    NSLog(@"%@",points);
    
    [self performSegueWithIdentifier:@"SecurityWebcamController" sender:self];
//    [self performSegueWithIdentifier:@"SecurityCallViewController" sender:self];
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
