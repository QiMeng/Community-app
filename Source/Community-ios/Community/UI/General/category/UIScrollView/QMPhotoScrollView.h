//
//  QMPhotoScrollView.h
//  Community
//
//  Created by 永生刘 on 14/10/13.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QMPhotoScrollView : UIScrollView {
    
    UIButton * plusBtn;
    
}

@property (nonatomic, strong) NSMutableArray * images;

@property (nonatomic, strong) UIViewController * parentViewController;




@end
