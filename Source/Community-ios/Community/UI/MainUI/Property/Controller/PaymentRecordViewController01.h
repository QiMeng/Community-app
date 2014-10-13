//
//  PaymentRecordViewController01.h
//  Community
//
//  Created by 永生刘 on 14/10/13.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "QMViewController.h"

@interface PaymentRecordViewController01 : QMViewController {
    
    __weak IBOutlet UILabel *fromTimeLabel;
    
    __weak IBOutlet UILabel *toTimeLabel;
    
    __weak IBOutlet UILabel *nameLabel;
    
    __weak IBOutlet UILabel *priceLabel;
    
    __weak IBOutlet UILabel *businessLabel;
    
}

@property (nonatomic, strong) NSDictionary * infoDic;


@end
