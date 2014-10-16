//
//  VoteViewController01.m
//  Community
//
//  Created by 永生刘 on 14/10/16.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "VoteViewController01.h"
#import "VoteCell.h"
@interface VoteViewController01 ()

@end

@implementation VoteViewController01

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self leftDefaultNavBar];
    
    _list = [NSMutableArray arrayWithArray:@[@{@"left": @"A项",@"right":@"选填"},
                                             @{@"left": @"B项",@"right":@"选填"},
                                             @{@"left": @"C项",@"right":@"选填"},
                                             @{@"left": @"D项",@"right":@"选填"}]];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _list.count+1;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row == _list.count) {
        UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
        return cell;
    }
    
    
    VoteCell * cell = [tableView dequeueReusableCellWithIdentifier:@"VoteCell" forIndexPath:indexPath];
    
    NSDictionary * dic = _list[indexPath.row];
    
    cell.leftLabel.text = [dic objectForKeyNotNull:@"left"];
    cell.rightTF.placeholder = [dic objectForKeyNotNull:@"right"];
    
    
    
    return cell;
}

- (IBAction)touchAdd:(id)sender {
    
    NSString * str = @"ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    
    if (_list.count>=str.length) {
        [self showHint:@"最多只能添加26个选项" yOffset:2];
        return;
    }
    
    str = [str substringWithRange:NSMakeRange(_list.count, 1)];
    
    [_list addObject:@{@"left": [NSString stringWithFormat:@"%@项",str],@"right":@"选填"}];
    
    
    [myTableView reloadData];
    
    [myTableView scrollToRowAtIndexPath:[NSIndexPath indexPathForRow:_list.count inSection:0]
                       atScrollPosition:UITableViewScrollPositionBottom
                               animated:YES];
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
