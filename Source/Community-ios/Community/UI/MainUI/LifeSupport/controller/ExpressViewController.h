//
//  ExpressViewController.h
//  Community
//
//  Created by 永生刘 on 14/10/10.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//  快递代收

#import "QMTableViewController.h"

@interface ExpressViewController : QMTableViewController {
    
    __weak IBOutlet UITableView *myTableView;
    
    
    
}

@property (nonatomic, strong) NSArray * list;

@end
