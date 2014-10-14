//
//  CarpoolCell.m
//  Community
//
//  Created by 永生刘 on 14/10/15.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "CarpoolCell.h"

@implementation CarpoolCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)layoutSubviews {
    [super layoutSubviews];
    iconImageView.image = [UIImage imageNamed:_carpool.icon];
    
    if (_carpool.type == 0) {
        typeImageView.image = [UIImage imageNamed:@"complete_icon_car_1"];
    }else if (_carpool.type == 1) {
        typeImageView.image = [UIImage imageNamed:@"complete_icon_passenger_1"];
    }
    
    nameLabel.text = _carpool.name;
    addressLabel.text = _carpool.address;
    fromAdressLabel.text = [NSString stringWithFormat:@"起点:%@",_carpool.fromAddress];
    toAddressLabel.text = [NSString stringWithFormat:@"终点:%@",_carpool.toAddress];
    fromTimeLabel.text = [NSString stringWithFormat:@"出发时间:%@",_carpool.fromTime];
    updateTimeLabel.text = [NSString stringWithFormat:@"%@",_carpool.updateTime];
    replyLabel.text = [NSString stringWithFormat:@"%d回复",_carpool.replys.count];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
