//
//  HomeViewController.h
//  Community
//
//  Created by QiMengJin on 14-9-27.
//  Copyright (c) 2014年 QiMENG_LYS. All rights reserved.
//

#import "QMViewController.h"

@interface HomeViewController : UITabBarController {
    
    __weak IBOutlet UIView *propertyView;   //物业
    
    __weak IBOutlet UIView *lifeSupportView;//生活配套
    
    __weak IBOutlet UIView *socialView; //社交
    
    __weak IBOutlet UIView *securityView;   //安全
    
    __weak IBOutlet UIButton *centerBtn;    //个人中心
    
    NSInteger selectBtnNum;
    
}




@end
