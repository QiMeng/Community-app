//
//  CarpoolViewController.m
//  Community
//
//  Created by 永生刘 on 14/10/10.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "CarpoolViewController.h"
#import "CarpoolCell.h"
@interface CarpoolViewController ()

@end

@implementation CarpoolViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self leftDefaultNavBar];
    
    [kSverviceInstance  loadCarpoolUserID:@"" callBack:self];
}
- (void)loadListCallBack:(long)retCode msg:(NSString*)msg list:(NSArray *)list {
    _list = [NSMutableArray arrayWithArray:list];
    
    [myTableView reloadData];
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _list.count;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 141;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    CarpoolCell * cell = [tableView dequeueReusableCellWithIdentifier:@"CarpoolCell" forIndexPath:indexPath];
    cell.carpool = _list[indexPath.row];
    //    cell.textLabel.text = _lists[indexPath.row];
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
