//
//  MallCell.m
//  Community
//
//  Created by 永生刘 on 14/10/10.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "MallCell.h"

@implementation MallCell

- (void)awakeFromNib {
    // Initialization code
    
//    [convertBtn viewLineColor:RGBA(100, 100, 100, 1) borderWidth:1 cornerRadius:0];
    [convertBtn viewLineColor:RGBA(97, 191, 253, 1) borderWidth:1 cornerRadius:0];
    [convertBtn setTitleColor:RGBA(97, 191, 253, 1) forState:UIControlStateNormal];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
