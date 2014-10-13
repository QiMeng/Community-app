//
//  PaymentRecordViewController01.m
//  Community
//
//  Created by 永生刘 on 14/10/13.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "PaymentRecordViewController01.h"

@interface PaymentRecordViewController01 ()

@end

@implementation PaymentRecordViewController01

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self leftDefaultNavBar];
    
    fromTimeLabel.text = [_infoDic objectForKeyNotNull:@"fromtime"];
    
    toTimeLabel.text = [_infoDic objectForKeyNotNull:@"totime"];
    
    nameLabel.text = [_infoDic objectForKeyNotNull:@"name"];
    
    priceLabel.text = [NSString stringWithFormat:@"%@元",[_infoDic objectForKeyNotNull:@"price"]];
    
    businessLabel.text = [_infoDic objectForKeyNotNull:@"id"];
    
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
