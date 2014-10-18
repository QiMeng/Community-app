//
//  CarpoolCell01.h
//  Community
//
//  Created by 永生刘 on 14/10/16.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CarpoolCell01Delegate <NSObject>
- (void)carpoolRelpy:(id)sender;
@end


@interface CarpoolCell01 : UITableViewCell {
    
    
    __weak IBOutlet UIImageView *iconImageView;
    
    __weak IBOutlet UILabel *titleLabel;
    
    __weak IBOutlet UILabel *subLabel;
    
    __weak IBOutlet UILabel *timeLabel;
    
    
}

@property (assign) id<CarpoolCell01Delegate> delegate;

@property (nonatomic, strong) NSDictionary * infoDic;


@end
