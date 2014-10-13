//
//  ExpressCell.h
//  Community
//
//  Created by 永生刘 on 14/10/13.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Express.h"
@interface ExpressCell : UITableViewCell {
    
    
    __weak IBOutlet UILabel *titleLabel;
    
    __weak IBOutlet UILabel *personLabel;
    
    __weak IBOutlet UILabel *pwdLabel;
    
    
}


@property (nonatomic, strong) Express * express;

@end
