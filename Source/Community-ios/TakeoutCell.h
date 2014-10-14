//
//  TakeoutCell.h
//  Community
//
//  Created by 永生刘 on 14/10/15.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Takeout.h"

@protocol TakeoutCellDelegate <NSObject>
- (void)changeTotalprice:(id)sender;
@end


@interface TakeoutCell : UITableViewCell {
    
    __weak IBOutlet UIView *iconImageView;
    

    __weak IBOutlet UILabel *titleLabel;
    
    __weak IBOutlet UILabel *priceLabel;
    
    __weak IBOutlet UIButton *lessBtn;
    
    __weak IBOutlet UIButton *plusBtn;
    
    __weak IBOutlet UILabel *amountLabel;
    
}
@property (assign) id<TakeoutCellDelegate> delegate;
@property (nonatomic, strong) Takeout * takout;


@end
