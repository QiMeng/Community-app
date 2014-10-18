//
//  CarpoolViewController.h
//  Community
//
//  Created by 永生刘 on 14/10/10.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "QMTableViewController.h"

@interface CarpoolViewController : QMTableViewController {
    
    
    __weak IBOutlet UITableView *myTableView;
    
    NSMutableArray * selectList;
    
    NSInteger selectInt;
    
    
    __weak IBOutlet UIView *menuView;
    
    
    __weak IBOutlet UIView *subView;
    
}

@property (nonatomic, strong) NSMutableArray * list;

@end
