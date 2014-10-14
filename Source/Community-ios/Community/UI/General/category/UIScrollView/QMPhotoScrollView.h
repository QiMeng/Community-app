//
//  QMPhotoScrollView.h
//  Community
//
//  Created by 永生刘 on 14/10/13.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QMPhotoScrollView : UIScrollView <UIImagePickerControllerDelegate,UINavigationControllerDelegate,UIAlertViewDelegate>{
    
    UIButton * plusBtn;
    
}

- (instancetype)initWithFrame:(CGRect)frame;

@property (nonatomic, strong) NSMutableArray * images;

@property (nonatomic,strong) UIImagePickerController *picker ;
@property (nonatomic, strong) UIViewController * parentViewController;




@end
