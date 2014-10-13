/************************************************************
 *  * EaseMob CONFIDENTIAL
 * __________________
 * Copyright (C) 2013-2014 EaseMob Technologies. All rights reserved.
 *
 * NOTICE: All information contained herein is, and remains
 * the property of EaseMob Technologies.
 * Dissemination of this information or reproduction of this material
 * is strictly forbidden unless prior written permission is obtained
 * from EaseMob Technologies.
 */

#import "UIViewController+DismissKeyboard.h"

@implementation UIViewController (DismissKeyboard)
- (void)setupForDismissKeyboard {
    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    UITapGestureRecognizer *singleTapGR =
    [[UITapGestureRecognizer alloc] initWithTarget:self
                                            action:@selector(tapAnywhereToDismissKeyboard:)];
    
    __weak UIViewController *weakSelf = self;
    
    NSOperationQueue *mainQuene =[NSOperationQueue mainQueue];
    [nc addObserverForName:UIKeyboardWillShowNotification
                    object:nil
                     queue:mainQuene
                usingBlock:^(NSNotification *note){
                    [weakSelf.view addGestureRecognizer:singleTapGR];
                }];
    [nc addObserverForName:UIKeyboardWillHideNotification
                    object:nil
                     queue:mainQuene
                usingBlock:^(NSNotification *note){
                    [weakSelf.view removeGestureRecognizer:singleTapGR];
                }];
}

- (void)tapAnywhereToDismissKeyboard:(UIGestureRecognizer *)gestureRecognizer {
    //此method会将self.view里所有的subview的first responder都resign掉
    [self.view endEditing:YES];
}


- (void)leftDefaultNavBar{
    [self leftNavBarImage:@"public_btn_back_nor" withText:@""];
}
- (void)leftNavBarImage:(NSString *)imageStr withText:(NSString *)text{
    
    UIImage *img = [UIImage imageNamed:imageStr];
    UIButton *button = nil;
    CGSize size = CGSizeMake(0, 0);
    if (text.length ) {
        size = [text sizeFromString:text andFontSize:15];
    }
    
    button = [UIButton allocButtonFrame:CGRectMake(0, 0, img.width + size.width + 5, self.navigationController.navigationBar.height)
                            normalTitle:text
                          selectedTitle:nil
                       normalTitleColor:[UIColor blackColor]
                     selectedTitleColor:nil
                        backgroundColor:nil
                              titleFont:[UIFont fontWithName:kBaseFont size:15]//[UIFont boldSystemFontOfSize:15]
                            normalImage:img
                          selectedImage:nil
                          normalBgImage:nil
                        selectedBgImage:nil
                                 target:self
                               selector:@selector(leftNavBar:)
                       autoresizingMask:UIViewAutoresizingNone];
    
    UIBarButtonItem *barBtn = [[UIBarButtonItem alloc]initWithCustomView:button];
    
    self.navigationItem.leftBarButtonItem = barBtn;
    
    SAFE_RELEASE(barBtn);
    
    
}
- (void)leftNavBar:(id)sender{
    [self.navigationController popViewControllerAnimated:YES];
}


@end
