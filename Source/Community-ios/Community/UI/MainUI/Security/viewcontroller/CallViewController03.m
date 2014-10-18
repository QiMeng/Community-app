//
//  CallViewController03.m
//  Community
//
//  Created by 永生刘 on 14/10/18.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "CallViewController03.h"
#import "CallCell04.h"
@interface CallViewController03 () <CallCell04Delegate>

@end

@implementation CallViewController03

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self leftDefaultNavBar];
    
    _list = [NSMutableArray arrayWithArray:@[@{@"name": @"啊雅",@"phone":@"1380500095"},
                                             @{@"name": @"坑货",@"phone":@"1380500095"}]];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _list.count+1;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row == 0) {

        return 50;
    }

    return 60;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row == 0) {
        UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"CallCell03" forIndexPath:indexPath];
        
        return cell;
    }
    
    NSDictionary * dic = _list[indexPath.row-1];
    
    CallCell04 * cell = [tableView dequeueReusableCellWithIdentifier:@"CallCell04" forIndexPath:indexPath];
    
    cell.nameLabel.text = [dic objectForKeyNotNull:@"name"];
    cell.phoneLabel.text = [dic objectForKeyNotNull:@"phone"];
    cell.infoDic = dic;
    cell.delegate =self;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row == 0) {
        
        [self performSegueWithIdentifier:@"CallViewController04" sender:self];
        
        return;
    }
    
    
    
}
- (void)deleteData:(id)sender {
    
    [_list removeObject:sender];
    
    [myTableView reloadData];
    
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
