//
//  PaymentViewController02.h
//  Community
//
//  Created by 永生刘 on 14/10/13.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "QMTableViewController.h"

@interface PaymentViewController02 : QMTableViewController {
    
    __weak IBOutlet UITableView *myTableView;
    
}

@property (nonatomic, strong) NSArray * list;

@end
