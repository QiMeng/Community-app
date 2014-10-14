//
//  PageAssessCell.h
//  Community
//
//  Created by 永生刘 on 14/10/14.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PageAssessCell : UITableViewCell {
    
    
    __weak IBOutlet UIImageView *iconImageView;
    
    __weak IBOutlet UILabel *nameLabel;
    
    __weak IBOutlet UILabel *descLabel;
    
    __weak IBOutlet UILabel *timeLabel;
}

@property (nonatomic, strong) NSDictionary * infoDic;

@end
