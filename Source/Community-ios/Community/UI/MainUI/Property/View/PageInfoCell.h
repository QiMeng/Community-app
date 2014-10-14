//
//  PageInfoCell.h
//  Community
//
//  Created by 永生刘 on 14/10/13.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

/**
 *  是银行卡的cell . 写错了.懒得改了
 */


#import <UIKit/UIKit.h>



@interface PageInfoCell : UITableViewCell {
    
    
//    __weak IBOutlet UIImageView *iconImageView;
//    
//    __weak IBOutlet UILabel *titleLabel;
//    __weak IBOutlet UILabel *subLabel;
//    
    __weak IBOutlet UIImageView *tyepImageView;
    
}
@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property (weak, nonatomic) IBOutlet UILabel *subLabel;



@end
