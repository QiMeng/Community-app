//
//  CallViewController03.h
//  Community
//
//  Created by 永生刘 on 14/10/18.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//
//  紧急联系人

#import "QMTableViewController.h"

@interface CallViewController03 : QMTableViewController {
    
    
    __weak IBOutlet UITableView *myTableView;
    
    
}

@property (nonatomic, strong) NSMutableArray * list;


@end
