//
//  HomeViewController.m
//  Community
//
//  Created by QiMengJin on 14-9-27.
//  Copyright (c) 2014年 QiMENG_LYS. All rights reserved.
//

#import "HomeViewController.h"

#define kBottomBtnTag 100
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
//    selectBtnNum = -1;
//    
//    [self bottomDidLoad];
}

#pragma mark - 底部选择控件
- (void)bottomDidLoad {
    
    UIImageView * bottomView = [[UIImageView alloc]initWithFrame:CGRectMake(0, self.view.height - 49, self.view.width, 49)];
    bottomView.autoresizingMask = UIViewAutoresizingFlexibleTopMargin|UIViewAutoresizingFlexibleWidth;
    bottomView.backgroundColor = [UIColor greenColor];
    bottomView.userInteractionEnabled = YES;
    [self.view addSubview:bottomView];
    
    NSInteger bottomNum = 5;
    CGFloat bottomWidth = 1.0*self.view.width/bottomNum;
    for (int i = 0 ; i < bottomNum ; i++) {
        UIButton * btn = [UIButton allocButtonFrame:CGRectMake(i * bottomWidth, 0, bottomWidth-10, bottomView.height)
                                      normalBgImage:nil
                                    selectedBgImage:nil
                                             target:self
                                           selector:@selector(touchBottomBtn:)];
        btn.tag = kBottomBtnTag + i;
        [bottomView addSubview:btn];
    }
    
    
}
#pragma mark - 点击底部按钮方法
- (void)touchBottomBtn:(UIButton *)btn {
    
    NSInteger row = btn.tag - kBottomBtnTag;
    
    if (row == selectBtnNum) {
        return;
    }
    
    switch (row) {
        case 0:
        {
            propertyView.hidden = NO;
            lifeSupportView.hidden = YES;
            socialView.hidden = YES;
            securityView.hidden = YES;
        }
            break;
        case 1:
        {
            propertyView.hidden = YES;
            lifeSupportView.hidden = NO;
            socialView.hidden = YES;
            securityView.hidden = YES;
        }
            break;
        case 2:
        {
            propertyView.hidden = YES;
            lifeSupportView.hidden = YES;
            socialView.hidden = NO;
            securityView.hidden = YES;
        }
            break;
        case 3:
        {
            propertyView.hidden = YES;
            lifeSupportView.hidden = YES;
            socialView.hidden = YES;
            securityView.hidden = NO;
        }
            break;
        default:
            break;
    }
    
    
    
    
//    UIButton * rowBtn = (UIButton *)[self.view viewWithTag:selectBtnNum+kBottomBtnTag];
//    if (rowBtn) {
//        rowBtn.selected = NO;
//    }
    selectBtnNum = row;
    btn.selected = YES;
    
    DLog(@"%d",selectBtnNum);
    
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
