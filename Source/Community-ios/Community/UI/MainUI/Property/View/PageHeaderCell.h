//
//  PageHeaderCell.h
//  Community
//
//  Created by 永生刘 on 14/10/13.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Page.h"
@interface PageHeaderCell : UITableViewCell {
    
    __weak IBOutlet UILabel *titleLabel;
    
    __weak IBOutlet UILabel *commentLabel;
    
    __weak IBOutlet UILabel *phoneLabel;
    
    __weak IBOutlet UIImageView *iconImageView;
    
    __weak IBOutlet UILabel *contentLabel;
    
    
}

@property (nonatomic,strong) Page * pagePhone;


@end
