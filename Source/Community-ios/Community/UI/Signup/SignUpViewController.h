//
//  SignUpViewController.h
//  Community
//
//  Created by QiMENG on 14-9-26.
//  Copyright (c) 2014年 QiMENG_LYS. All rights reserved.
//

#import "QMViewController.h"

@interface SignUpViewController : QMViewController {
    

    __weak IBOutlet UITextField *phoneTF;
    __weak IBOutlet UIButton *getCodeBtn;
    
    
    
    __weak IBOutlet UITextField *codeTF;
    __weak IBOutlet UIImageView *lineView;
    
    __weak IBOutlet UIButton *agreeBtn;
    
    
}

@end
