//
//  CallCell04.m
//  Community
//
//  Created by 永生刘 on 14/10/18.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "CallCell04.h"

@implementation CallCell04

- (void)awakeFromNib {
    // Initialization code
}
- (IBAction)touchDelete:(id)sender {
    
    if (self.delegate && [self.delegate respondsToSelector:@selector(deleteData:)]) {
        [self.delegate deleteData:_infoDic];
    }
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
