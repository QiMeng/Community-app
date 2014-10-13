//
//  SignAddressViewController.m
//  Community
//
//  Created by 永生刘 on 14/10/13.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "SignAddressViewController.h"

@interface SignAddressViewController ()


@end

@implementation SignAddressViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _list.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell  = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        
    }
    
    
    NSDictionary * dic = _list[indexPath.row];
 
    cell.textLabel.text = [dic objectForKeyNotNull:@"title"];
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
 
    NSDictionary * dic = _list[indexPath.row];
    NSString * title = [dic objectForKeyNotNull:@"title"];
    NSString * idStr = [dic objectForKeyNotNull:@"id"];
    
    kQMUserInfo.signphone = [dic objectForKeyNotNull:@"phone"];;
    
    if ([idStr isEqualToString:@"area"]) {
        kQMUserInfo.signarea = title;
    }else if ([idStr isEqualToString:@"community"]) {
        kQMUserInfo.signcommunity = title;
    }else if ([idStr isEqualToString:@"floor"]) {
        kQMUserInfo.signfloor = title;
    }else if ([idStr isEqualToString:@"unit"]) {
        kQMUserInfo.signunit = title;
    }
    
    
    if ([dic objectForKey:@"list"]) {
        
        UIStoryboard *story = [UIStoryboard  storyboardWithName:@"Main"   bundle:nil];
        SignAddressViewController * ctrl = [story instantiateViewControllerWithIdentifier:@"SignAddressViewController"];

        ctrl.list = [dic objectForKey:@"list"];
        [self.navigationController pushViewController:ctrl animated:YES];
        [ctrl leftDefaultNavBar];
    }else {
        
        [self dismissViewControllerAnimated:YES completion:^{
            
        }];
        
    }
}
- (void)leftNavBar01:(id)sender{
    [self dismissViewControllerAnimated:YES completion:^{
        [kQMUserInfo clearSign];
    }];
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
