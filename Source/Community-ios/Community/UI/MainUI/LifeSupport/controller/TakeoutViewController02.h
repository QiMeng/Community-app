//
//  TakeoutViewController02.h
//  Community
//
//  Created by 永生刘 on 14/10/16.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TakeoutCell.h"
@interface TakeoutViewController02 : UITableViewController {
    
    __weak IBOutlet UITableView *myTableView;
    
    __weak IBOutlet UILabel *totilLabel;
    
    __weak IBOutlet UILabel *totilPirceLabel;
    
    __weak IBOutlet TakeoutCell *takeCell;


    
}

@property (nonatomic, strong) NSMutableArray * list;

@end
