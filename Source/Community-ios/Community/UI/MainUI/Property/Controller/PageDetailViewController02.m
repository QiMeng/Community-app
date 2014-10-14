//
//  PageDetailViewController02.m
//  Community
//
//  Created by 永生刘 on 14/10/14.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "PageDetailViewController02.h"

@interface PageDetailViewController02 ()

@end

@implementation PageDetailViewController02

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self leftDefaultNavBar];
    contentTF.placeholder = @"我要啰嗦两句";
    
    [btn01 viewLineColor:RGBA(97, 191, 253, 1)
             borderWidth:1
            cornerRadius:0];
    [btn02 viewLineColor:RGBA(97, 191, 253, 1)
             borderWidth:1
            cornerRadius:0];
    [btn03 viewLineColor:RGBA(97, 191, 253, 1)
             borderWidth:1
            cornerRadius:0];
    [btn04 viewLineColor:RGBA(97, 191, 253, 1)
             borderWidth:1
            cornerRadius:0];
    
    
    
}
- (IBAction)touchSubmit:(id)sender {
    
    if (!contentTF.text.length) {
        [self showErrorString:@"请输入内容"];
        return;
    }
    
    [self showSuccessString:@"评论成功"];
    return;
}
-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    if ([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        return NO;
    }
    return YES;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
