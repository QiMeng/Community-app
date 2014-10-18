//
//  ForumViewController.h
//  Community
//
//  Created by 永生刘 on 14/10/16.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "QMTableViewController.h"

@interface ForumViewController : QMTableViewController {
    
    
    __weak IBOutlet UITableView *myTableView;
    
    __weak IBOutlet UIView *menuView;
    
    __weak IBOutlet UIButton *menuBtn;
    
    
    __weak IBOutlet UIView *subView;
    
}

@property (nonatomic, strong) NSArray * list;

@end
