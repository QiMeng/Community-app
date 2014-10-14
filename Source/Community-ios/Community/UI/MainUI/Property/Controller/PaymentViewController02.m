//
//  PaymentViewController02.m
//  Community
//
//  Created by 永生刘 on 14/10/13.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "PaymentViewController02.h"
#import "PaymentCell02.h"
#import "PaymentViewController03.h"
@interface PaymentViewController02 ()

@end

@implementation PaymentViewController02


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self leftDefaultNavBar];
    
    [myTableView reloadData];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _list.count;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    PaymentCell02 * cell = [tableView dequeueReusableCellWithIdentifier:@"PaymentCell02" forIndexPath:indexPath];
    cell.infoDic = _list[indexPath.row];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [self performSegueWithIdentifier:@"PaymentViewController03" sender:_list[indexPath.row]];
    
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
    
    PaymentViewController03* ctrl = segue.destinationViewController;
    if ([ctrl isKindOfClass:[PaymentViewController03 class]] ) {
        //        view.bulletin = sender;
        ctrl.infoDic = sender;
    }
    
}


@end
