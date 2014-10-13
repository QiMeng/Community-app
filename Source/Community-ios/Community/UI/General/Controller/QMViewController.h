//
//  QMViewController.h
//  Community
//
//  Created by QiMENG on 14-9-26.
//  Copyright (c) 2014年 QiMENG_LYS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QMNavigationController.h"
#import <SVProgressHUD.h>

@interface QMViewController : UIViewController


- (void)showWithStatus:(NSString *)string;


//显示错误信息
- (void)showErrorString:(NSString *)string;

//显示成功信息
- (void)showSuccessString:(NSString *)string;

- (void)dismiss;


@end
