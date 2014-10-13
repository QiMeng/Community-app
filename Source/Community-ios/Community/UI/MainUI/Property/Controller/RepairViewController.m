//
//  RepairViewController.m
//  Community
//
//  Created by PYL on 14-10-1.
//  Copyright (c) 2014年 QiMENG_LYS. All rights reserved.
//
// 投诉报修

#import "RepairViewController.h"

@interface RepairViewController () {
    
    __weak IBOutlet UITextField *contentTF;
    __weak IBOutlet UITextField *roomTF;
    __weak IBOutlet UITextField *phoneTF;
    __weak IBOutlet UITextField *contactTF;
    __weak IBOutlet UITextField *timeTF;
    
}

@end

@implementation RepairViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self leftDefaultNavBar];
}


- (IBAction)touchSubmit:(id)sender {
    
    NSString * error = nil;
    
    if (!timeTF.text.length) {
        error = @"请输入预约时间";
    }
    if (!contactTF.text.length) {
        error = @"请输入联系人";
    }
    if (!phoneTF.text.length) {
        error = @"请输入电话";
    }
    if (!roomTF.text.length) {
        error = @"请输入房间号";
    }
    if (!contentTF.text.length) {
        error = @"请输入内容";
    }
    
    if (error) {
        [self showErrorString:error];
    }else {
        [self showSuccessString:@"提交成功"];
    }
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
