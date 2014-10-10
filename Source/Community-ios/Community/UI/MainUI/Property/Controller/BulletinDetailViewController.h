//
//  BulletinDetailViewController.h
//  Community
//
//  Created by 永生刘 on 14/10/10.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//  公告详情

#import "QMViewController.h"
#import "Bulletin.h"
@interface BulletinDetailViewController : QMViewController {
    
    __weak IBOutlet UILabel *subLabel;
    
    
    
}

@property (nonatomic, strong) Bulletin * bulletin;

@end
