//
//  PaymentCell.h
//  Community
//
//  Created by 永生刘 on 14/10/10.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Payment.h"
@protocol PaymentCellDelegate <NSObject>
- (void)paymentCall:(id)sender;
- (void)recordCall:(id)sender;
@end


@interface PaymentCell : UITableViewCell {
    
    
    __weak IBOutlet UILabel *titleLabel;
    
    
    
    
}

@property (assign) id<PaymentCellDelegate> delegate;
@property (nonatomic, strong) Payment * payment;

@end
