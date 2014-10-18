//
//  CallViewController01.h
//  Community
//
//  Created by 永生刘 on 14/10/18.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//
//  紧急短信
#import "QMViewController.h"
#import <SZTextView.h>
@interface CallViewController01 : QMViewController {
    
    __weak IBOutlet UITextField *phoneTF;
    
    
    __weak IBOutlet SZTextView *contentTF;
    
}

@end
