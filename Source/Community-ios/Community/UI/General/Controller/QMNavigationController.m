//
//  QMNavigationController.m
//  Community
//
//  Created by QiMengJin on 14-9-27.
//  Copyright (c) 2014年 QiMENG_LYS. All rights reserved.
//

#import "QMNavigationController.h"

@interface QMNavigationController ()

@end

@implementation QMNavigationController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    for (UIView * view in self.navigationBar.subviews  ) {
        
        DLog(@"%@",view);
    }
    
    
    [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"public_img_topbg"] forBarMetrics:UIBarMetricsDefault];

    self.navigationBar.shadowImage = [UIImage createImageWithColor:[UIColor clearColor]];
    
     [self.navigationBar setTranslucent:NO];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
