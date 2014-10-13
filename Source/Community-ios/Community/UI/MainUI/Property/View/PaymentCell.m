//
//  PaymentCell.m
//  Community
//
//  Created by 永生刘 on 14/10/10.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "PaymentCell.h"

@implementation PaymentCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    titleLabel.text = _payment.name;
    
    
}



//缴费
- (IBAction)touchPayment:(id)sender {
    if (self.delegate && [self.delegate respondsToSelector:@selector(paymentCall:)]) {
        [self.delegate paymentCall:_payment];
    }
}
//记录
- (IBAction)touchRecord:(id)sender {

    if (self.delegate && [self.delegate respondsToSelector:@selector(recordCall:)]) {
        [self.delegate recordCall:_payment];
    }
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
