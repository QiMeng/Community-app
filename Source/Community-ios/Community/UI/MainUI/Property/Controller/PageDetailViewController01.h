//
//  PageDetailViewController01.h
//  Community
//
//  Created by 永生刘 on 14/10/14.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "QMTableViewController.h"

#import "Page.h"

@interface PageDetailViewController01 : QMTableViewController {
    
    
    __weak IBOutlet UITableView *myTableView;
    
    
    __weak IBOutlet UIButton *phoneBtn;
    
}

@property (nonatomic,strong) Page * pagePhone;


@end
