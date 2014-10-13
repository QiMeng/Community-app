//
//  BulletinEditViewController.h
//  Community
//
//  Created by 永生刘 on 14/10/13.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "QMViewController.h"
#import <SZTextView.h>
@interface BulletinEditViewController : QMViewController {
    
    __weak IBOutlet UITextField *titleTF;
    
    __weak IBOutlet SZTextView *contentTF;
    
    __weak IBOutlet UILabel *updateTime;
    
    
    
}

@end
