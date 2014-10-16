//
//  ForumCell.h
//  Community
//
//  Created by 永生刘 on 14/10/16.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Forum.h"
@interface ForumCell : UITableViewCell {
    
    __weak IBOutlet UILabel *titleLabel;
    
    __weak IBOutlet UILabel *nameLabel;
    
    __weak IBOutlet UILabel *timeLabel;
    
    __weak IBOutlet UILabel *replyLabel;
    
    
    
}

@property (nonatomic, strong) Forum * forum;


@end
