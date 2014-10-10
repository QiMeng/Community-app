//
//  PaymentCell.h
//  Community
//
//  Created by 永生刘 on 14/10/10.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PaymentCellDelegate <NSObject>
- (void)paymentCall:(id)sender;
@end


@interface PaymentCell : UITableViewCell

@property (assign) id<PaymentCellDelegate> delegate;

@end
