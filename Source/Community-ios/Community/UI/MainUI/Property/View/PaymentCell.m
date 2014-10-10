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


- (IBAction)touchPayment:(id)sender {
    if (self.delegate && [self.delegate respondsToSelector:@selector(paymentCall:)]) {
        [self.delegate paymentCall:sender];
    }
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
