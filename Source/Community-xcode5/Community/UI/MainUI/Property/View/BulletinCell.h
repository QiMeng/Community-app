//
//  BulletinCell.h
//  Community
//
//  Created by QiMENG on 14-9-29.
//  Copyright (c) 2014年 QiMENG_LYS. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Bulletin;

@interface BulletinCell : UITableViewCell {
    
    

    __weak IBOutlet UILabel *nameLabel;
    
    __weak IBOutlet UILabel *descriptionLabel;
    
}

@property (nonatomic, strong) Bulletin * bulletin;

@end
