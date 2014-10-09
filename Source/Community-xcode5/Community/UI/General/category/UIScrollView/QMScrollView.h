//
//  LYSScrollView.h
//  SXT
//
//  Created by strong on 13-1-31.
//  Copyright (c) 2013年 LYS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QMScrollView : UIScrollView{
    UIEdgeInsets    _priorInset;
    BOOL            _priorInsetSaved;
    BOOL            _keyboardVisible;
    CGRect          _keyboardRect;
    CGSize          _originalContentSize;
}

- (void)adjustOffsetToIdealIfNeeded;

@end
