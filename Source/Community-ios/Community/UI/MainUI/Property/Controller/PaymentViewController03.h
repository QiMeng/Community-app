//
//  PaymentViewController03.h
//  Community
//
//  Created by 永生刘 on 14/10/13.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "QMTableViewController.h"

@interface PaymentViewController03 : QMTableViewController {
    
    __weak IBOutlet UILabel *fromTimeLabel;
    
    __weak IBOutlet UILabel *toTimeLabel;
    
    __weak IBOutlet UILabel *nameLabel;
    
    __weak IBOutlet UILabel *priceLabel;
    
    
    __weak IBOutlet UITableView *myTableView;
    
    
    __weak IBOutlet UIButton *sumbitBtn;
    
    __weak IBOutlet UIScrollView *myScorllView;
    
}


@property (nonatomic, strong) NSDictionary * infoDic;

@end
