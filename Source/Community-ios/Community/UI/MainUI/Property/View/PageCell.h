//
//  PageCell.h
//  Community
//
//  Created by QiMENG on 14-9-29.
//  Copyright (c) 2014年 QiMENG_LYS. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Page.h"

@protocol PageCellDelegate <NSObject>
- (void)callTelPhone:(NSString *)phone;
@end


@interface PageCell : UITableViewCell {
    
    
    __weak IBOutlet UILabel *titleLabel;
    
    __weak IBOutlet UIButton *callBtn;
    
    __weak IBOutlet UILabel *commentLabel;
    
    __weak IBOutlet UILabel *phoneLabel;
    
    __weak IBOutlet UIImageView *iconImageView;
    
}
@property (assign) id<PageCellDelegate> delegate;

@property (nonatomic,strong) Page * pagePhone;


@end
