//
//  PaymentViewController01.m
//  Community
//
//  Created by 永生刘 on 14/10/10.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "PaymentViewController01.h"
#import "Payment.h"
#import "PaymentViewController02.h"
@interface PaymentViewController01 ()

@end

@implementation PaymentViewController01

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self leftDefaultNavBar];

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _list.count;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    NSDictionary * dic = _list[indexPath.row];
    
    cell.textLabel.text = [dic objectForKeyNotNull:@"name"];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary * dic = _list[indexPath.row];
    
    
    [self performSegueWithIdentifier:@"PaymentViewController02" sender:[dic objectForKeyNotNull:@"list"]];
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
    
    PaymentViewController02* ctrl = segue.destinationViewController;
    if ([ctrl isKindOfClass:[PaymentViewController02 class]] ) {
        //        view.bulletin = sender;
        ctrl.list = sender;
    }
    
}


@end
