//
//  ExpressViewController.m
//  Community
//
//  Created by 永生刘 on 14/10/10.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "ExpressViewController.h"
#import "ExpressCell.h"
#import "ExpressViewController01.h"
@interface ExpressViewController ()

@end

@implementation ExpressViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self leftDefaultNavBar];
    
    [kSverviceInstance loadExpressUserID:@"" callBack:self];
    
    
}

- (void)loadListCallBack:(long)retCode msg:(NSString*)msg list:(NSArray *)list {
    
    _list = [NSArray arrayWithArray:list];
    
    [myTableView reloadData];
    
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _list.count;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 50;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ExpressCell * cell = [tableView dequeueReusableCellWithIdentifier:@"ExpressCell" forIndexPath:indexPath];
    cell.express = _list[indexPath.row];
//    cell.textLabel.text = _lists[indexPath.row];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [self performSegueWithIdentifier:@"ExpressViewController01" sender:_list[indexPath.row]];
    
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
    
    ExpressViewController01* ctrl = segue.destinationViewController;
    if ([ctrl isKindOfClass:[ExpressViewController01 class]] ) {
        //        view.bulletin = sender;
        ctrl.express = sender;
    }
    
    
    
}


@end
