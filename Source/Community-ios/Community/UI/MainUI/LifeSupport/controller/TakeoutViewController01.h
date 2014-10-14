//
//  TakeoutViewController01.h
//  Community
//
//  Created by 永生刘 on 14/10/10.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "QMTableViewController.h"

@interface TakeoutViewController01 : QMTableViewController {
    
    
    
    __weak IBOutlet UILabel *infoLabel;
    
    __weak IBOutlet UIButton *okBtn;
}


@property (nonatomic, strong) NSMutableArray * list;

@end
