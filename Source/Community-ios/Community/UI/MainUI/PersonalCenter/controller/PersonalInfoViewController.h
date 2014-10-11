//
//  PersonalInfoViewController.h
//  Community
//
//  Created by 永生刘 on 14/10/10.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//
//  个人资料
#import "QMViewController.h"

@interface PersonalInfoViewController : QMViewController {
    
    
    __weak IBOutlet UIButton *headerImageBtn;
    
    __weak IBOutlet UITextField *nickNameTF;    //昵称
    
    __weak IBOutlet UISegmentedControl *sexSegment; //性别
    __weak IBOutlet UITextField *careerTF;  //职业
    
    __weak IBOutlet UITextField *hobbiesTF; //爱好
    
    __weak IBOutlet UITextField *newPwd;    //新密码
    
    
    
    
}

@end
