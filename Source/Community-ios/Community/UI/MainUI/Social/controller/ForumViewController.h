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
    
    
}

@property (nonatomic, strong) NSArray * list;

@end
