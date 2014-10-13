//
//  ExpressViewController01.m
//  Community
//
//  Created by 永生刘 on 14/10/10.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "ExpressViewController01.h"

@interface ExpressViewController01 ()

@end

@implementation ExpressViewController01

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self leftDefaultNavBar];
    
    titleLabel.text = _express.name;
    
    acceptLabel.text = _express.accepter;
    totimeLabel.text = _express.totime;
    fromtimeLabel.text = _express.fromtime;
    posterLabel.text = _express.poster;
    jobnumLabel.text = _express.jobnum;
    phoneLabel.text = _express.phone;
    
    pwdLabel.text = [NSString stringWithFormat:@"取件密钥:%@",_express.pwd];
    
}

- (IBAction)touchSumbit:(id)sender {
    
    
    [self showSuccessString:@"取件成功"];
    
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
