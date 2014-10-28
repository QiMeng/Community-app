//
//  UnlockViewController.h
//  Community
//
//  Created by 永生刘 on 14/10/17.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "QMViewController.h"

#import "NineGridUnlockView.h"
@interface UnlockViewController : QMViewController {
    
    
    __weak IBOutlet UIView *view01;
    
    __weak IBOutlet UIView *view02;
    
    __weak IBOutlet UIButton *forgetBtn;
}

@property (nonatomic,copy) NSString* password;
@property (nonatomic,assign) PasswordSate state;
@property (nonatomic,assign) NSInteger typeInt;



@end
