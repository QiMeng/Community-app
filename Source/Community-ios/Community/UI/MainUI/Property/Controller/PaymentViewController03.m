//
//  PaymentViewController03.m
//  Community
//
//  Created by 永生刘 on 14/10/13.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "PaymentViewController03.h"
#import "PageInfoCell.h"
@interface PaymentViewController03 ()

@end

@implementation PaymentViewController03

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self leftDefaultNavBar];
    
    myTableView.scrollEnabled = NO;
    fromTimeLabel.text = [_infoDic objectForKeyNotNull:@"fromtime"];
    
    toTimeLabel.text = [_infoDic objectForKeyNotNull:@"totime"];
    
    nameLabel.text = [_infoDic objectForKeyNotNull:@"name"];
    
    priceLabel.text = [NSString stringWithFormat:@"%@元",[_infoDic objectForKeyNotNull:@"price"]];
    [myTableView selectRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:0]
                             animated:YES
                       scrollPosition:UITableViewScrollPositionNone];
    
    
    myScorllView.contentSize = CGSizeMake(myScorllView.width, sumbitBtn.bottom+5);
    
}
- (IBAction)touchSumbit:(id)sender {
    
    [self showSuccessString:@"支付成功"];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 4;
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 60;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    PageInfoCell * cell = [tableView dequeueReusableCellWithIdentifier:@"PageInfoCell" forIndexPath:indexPath];
    
    
    switch (indexPath.row) {
        case 0:
        {
            cell.iconImageView.image = [UIImage imageNamed:@"property_icon_pay_01"];
            cell.titleLabel.text = @"银行卡支付";
            cell.subLabel.text = @"支持储蓄卡信用卡,无需开通网银";
        }
            break;
        case 1:
        {
            cell.iconImageView.image = [UIImage imageNamed:@"property_icon_pay_02"];
            cell.titleLabel.text = @"支付宝客户端支付";
            cell.subLabel.text = @"推荐安装支付宝客户端的用户使用";
        }
            break;
        case 2:
        {
            cell.iconImageView.image = [UIImage imageNamed:@"property_icon_pay_06"];
            cell.titleLabel.text = @"支付宝网页支付";
            cell.subLabel.text = @"推荐有支付宝账户的用户使用";
        }
            break;
        case 3:
        {
            cell.iconImageView.image = [UIImage imageNamed:@"property_icon_pay_04"];
            cell.titleLabel.text = @"财付通支付";
            cell.subLabel.text = @"支持银行卡和财付通账户支付";
        }
            break;
        default:
            break;
    }
    
    
    
    
    return cell;
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
