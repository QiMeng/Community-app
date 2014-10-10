//
//  MallCell.h
//  Community
//
//  Created by 永生刘 on 14/10/10.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MallCell : UITableViewCell {
    
    
    __weak IBOutlet UIButton *convertBtn;   //兑换
    
    __weak IBOutlet UIImageView *logoImageView;
    
    __weak IBOutlet UILabel *titleLabel;

    __weak IBOutlet UIImageView *typeImageView;
    
    __weak IBOutlet UILabel *amountLabel;
    
    
}



@end
