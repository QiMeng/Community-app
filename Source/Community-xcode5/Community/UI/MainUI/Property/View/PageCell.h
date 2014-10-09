//
//  PageCell.h
//  Community
//
//  Created by QiMENG on 14-9-29.
//  Copyright (c) 2014年 QiMENG_LYS. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "PageTelPhone.h"

@protocol PageCellDelegate <NSObject>
- (void)callTelPhone:(NSString *)phone;
@end


@interface PageCell : UITableViewCell {
    
    
    __weak IBOutlet UILabel *nameLabel;
    
    __weak IBOutlet UIButton *callBtn;
    
}
@property (assign) id<PageCellDelegate> delegate;

@property (nonatomic,strong) TelPhone * telphone;


@end
