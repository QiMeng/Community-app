//
//  PaymentViewController.m
//  Community
//
//  Created by 永生刘 on 14/10/10.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "PaymentViewController.h"
#import "PaymentCell.h"
#import "PaymentViewController01.h"
#import "Payment.h"
#import "PaymentRecordViewController.h"
@interface PaymentViewController () <PaymentCellDelegate>
@property (nonatomic, strong) NSArray * list;
@end

@implementation PaymentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
        [self leftDefaultNavBar];
    [kSverviceInstance loadPaymentUserID:@"" callBack:self];
    
}


- (void)loadPaymentListCallBack:(long)retCode msg:(NSString*)msg list:(NSArray *)list {
    
    _list = [NSArray arrayWithArray:list];
    
    [myTableView reloadData];
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _list.count;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    PaymentCell * cell = [tableView dequeueReusableCellWithIdentifier:@"PaymentCell" forIndexPath:indexPath];
    cell.delegate = self;
    cell.payment = _list[indexPath.row];
    return cell;
}

#pragma mark - 缴费
- (void)paymentCall:(id)sender {
    [self performSegueWithIdentifier:@"PaymentViewController01" sender:sender];
}
#pragma mark - 记录
- (void)recordCall:(id)sender {
    
    [self performSegueWithIdentifier:@"PaymentRecordViewController" sender:sender];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    PaymentViewController01* ctrl = segue.destinationViewController;
    if ([ctrl isKindOfClass:[PaymentViewController01 class]] && [sender isKindOfClass:[Payment class]]) {
        ctrl.list = ((Payment*)sender).list;
    }
    
    if ([ctrl isKindOfClass:[PaymentRecordViewController class]] && [sender isKindOfClass:[Payment class]]) {
        ctrl.list = ((Payment*)sender).records;
    }
    
    
    
}


@end
