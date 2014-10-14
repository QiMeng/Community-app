//
//  TakeoutCell.m
//  Community
//
//  Created by 永生刘 on 14/10/15.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "TakeoutCell.h"

@implementation TakeoutCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    
    
    
    [lessBtn viewLineColor:RGBA(227, 227, 227, 1) borderWidth:1 cornerRadius:0];
    [amountLabel viewLineColor:RGBA(227, 227, 227, 1) borderWidth:1 cornerRadius:0];
    [plusBtn viewLineColor:RGBA(227, 227, 227, 1) borderWidth:1 cornerRadius:0];
    
    
    amountLabel.text = [NSString stringWithFormat:@"%d",_takout.amount];
    
    titleLabel.text = _takout.name;
    
    priceLabel.text = [NSString stringWithFormat:@"%g",_takout.price];
    
}

- (IBAction)touchLess:(id)sender {
    
    if (_takout.amount==0) {
        return;
    }
    _takout.amount --;
    
    amountLabel.text = [NSString stringWithFormat:@"%d",_takout.amount];
    
    [self changeTotalPrice];
}

- (IBAction)touchPlus:(id)sender {

    _takout.amount ++;
    
    amountLabel.text = [NSString stringWithFormat:@"%d",_takout.amount];
    [self changeTotalPrice];
}

- (void)changeTotalPrice {
    
    if (self.delegate && [self.delegate respondsToSelector:@selector(changeTotalprice:)]) {
        [self.delegate changeTotalprice:_takout];
    }
    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
