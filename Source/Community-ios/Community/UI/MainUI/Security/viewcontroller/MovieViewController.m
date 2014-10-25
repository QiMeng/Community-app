//
//  MovieViewController.m
//  Community
//
//  Created by 永生刘 on 14/10/25.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "MovieViewController.h"
@interface MovieViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *myWebView;

@end

@implementation MovieViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self leftDefaultNavBar];
    
    self.navigationController.navigationBarHidden = NO;
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"movie" ofType:@"mov"];
    NSURL *baseURL = [NSURL fileURLWithPath:path];
    
    [_myWebView loadRequest:[NSURLRequest requestWithURL:baseURL]];

    
}
- (void)leftNavBar:(id)sender{
    [self.navigationController popToRootViewControllerAnimated:YES];
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
