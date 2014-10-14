//
//  CarpoolCell.h
//  Community
//
//  Created by 永生刘 on 14/10/15.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Carpool.h"
@interface CarpoolCell : UITableViewCell {
    
    __weak IBOutlet UIImageView *iconImageView;
    
    __weak IBOutlet UIImageView *typeImageView;
    
    __weak IBOutlet UILabel *nameLabel;
    
    __weak IBOutlet UILabel *addressLabel;
    
    __weak IBOutlet UILabel *fromAdressLabel;
    
    __weak IBOutlet UILabel *toAddressLabel;
    
    __weak IBOutlet UILabel *fromTimeLabel;
    
    __weak IBOutlet UILabel *updateTimeLabel;
    
    __weak IBOutlet UILabel *replyLabel;
    
}

@property (nonatomic, strong) Carpool * carpool;


@end
