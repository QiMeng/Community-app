//
//  PaymentCell02.h
//  Community
//
//  Created by 永生刘 on 14/10/13.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PaymentCell02 : UITableViewCell {
    
    
    __weak IBOutlet UILabel *nameLabel;

    __weak IBOutlet UILabel *timeLabel;
    
    __weak IBOutlet UILabel *priceLabel;
    
}

@property (nonatomic, strong) NSDictionary * infoDic;

@end
