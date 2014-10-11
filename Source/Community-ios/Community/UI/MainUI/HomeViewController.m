//
//  HomeViewController.m
//  Community
//
//  Created by QiMengJin on 14-9-27.
//  Copyright (c) 2014年 QiMENG_LYS. All rights reserved.
//

#import "HomeViewController.h"

#define kTabBarTag 1000
@interface HomeViewController ()

@end

@implementation HomeViewController

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
    
//    [self hideRealTabBar];
    
    [self didTabBarItems:@[@"tab_property",@"tab_complete",@"tab_security",@"tab_sns",@"tab_personal"] backGroundImage:nil];
}
#pragma mark - 隐藏UITabBar
- (void)hideRealTabBar{
    
    for(UIView *view in self.view.subviews){
        NSLog(@"%@",view);
        if([view isKindOfClass:[UITabBar class]]){
            view.hidden = YES;
            break;
        }
    }
}

- (void)didTabBarItems:(NSArray *)items backGroundImage:(UIImage *)backGroundImage {
    
    UIImageView * backGroundImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.tabBar.frame.size.width, self.tabBar.frame.size.height)];
    [backGroundImageView setImage:backGroundImage];
    backGroundImageView.backgroundColor = RGBA(255, 255, 255, 1);
    backGroundImageView.userInteractionEnabled = YES;
    [self.tabBar.viewForBaselineLayout addSubview:backGroundImageView];

    
    float tabWidth = 1.0 * DEVICE_SCREEN_WIDTH/items.count;
    for (int i=0; i<items.count; i++) {
        UIButton * btn=[UIButton allocButtonFrame:CGRectMake(i*tabWidth, 0, tabWidth,  self.tabBar.frame.size.height)
                                    normalBgImage:[UIImage imageNamed:items[i] ]
                                  selectedBgImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_hl",items[i]] ]
                                           target:self
                                         selector:@selector(touchTabBar:)];
        [backGroundImageView addSubview:btn];
        btn.tag=i+kTabBarTag;
    }
    
    UIImageView * lineView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, backGroundImageView.width, 1)];
    lineView.backgroundColor = RGBA(230, 230, 230, 1);
    [backGroundImageView addSubview:lineView];
    
    self.selectedIndex = 2;
    ((UIButton*)[self.view viewWithTag:self.selectedIndex+kTabBarTag]).selected=YES;
}

- (void)touchTabBar:(UIButton *)btn {
    
    int currentSelect = btn.tag-kTabBarTag;
    if (currentSelect == self.selectedIndex) {
        return;
    }
    ((UIButton*)[self.view viewWithTag:self.selectedIndex+kTabBarTag]).selected=NO;
    btn.selected = !btn.selected;
    self.selectedIndex = currentSelect;
    
    
}




//返回
- (IBAction)touchBack:(id)sender{
    
    [self dismissViewControllerAnimated:YES completion:^{}];
    
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
