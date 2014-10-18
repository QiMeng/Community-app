//
//  CallCell04.h
//  Community
//
//  Created by 永生刘 on 14/10/18.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol CallCell04Delegate <NSObject>
- (void)deleteData:(id)sender;
@end

@interface CallCell04 : UITableViewCell

@property (assign) id<CallCell04Delegate> delegate;

@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@property (weak, nonatomic) IBOutlet UILabel *phoneLabel;

@property (nonatomic, strong) NSDictionary * infoDic;

@end
