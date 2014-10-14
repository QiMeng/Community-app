//
//  PageDetailViewController.m
//  Community
//
//  Created by 永生刘 on 14/10/10.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "PageDetailViewController.h"
#import "PageCell.h"
#import "PageDetailViewController01.h"
@interface PageDetailViewController () <PageCellDelegate>

@end

@implementation PageDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self leftDefaultNavBar];
    
    [kSverviceInstance loadPagesUserID:@"" typeID:self.title callBack:self];
    
}

- (void)loadPagesListCallBack:(long)retCode msg:(NSString*)msg pagesList:(NSArray *)pagesList {
    
    _list = [NSMutableArray arrayWithArray:pagesList];
    [myTableView reloadData];
    
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return _list.count;
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 110;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    PageCell * cell = [tableView dequeueReusableCellWithIdentifier:@"PageCell" forIndexPath:indexPath];
    cell.delegate = self;
    cell.pagePhone = _list[indexPath.section];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    
    [self performSegueWithIdentifier:@"PageDetailViewController01" sender:_list[indexPath.section]];
    
    
    
}
#pragma mark - 拨打电话
- (void)callTelPhone:(NSString *)phone {
    
    DLog(@"%@",phone);
    //不返回应用
    NSMutableString * str=[[NSMutableString alloc] initWithFormat:@"tel:%@",phone];
//    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:str]];
    
    //返回应用
    UIWebView * callWebview = [[UIWebView alloc] init];
    [callWebview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:str]]];
    [self.view addSubview:callWebview];
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
    
    PageDetailViewController01* ctrl = segue.destinationViewController;
    if ([ctrl isKindOfClass:[PageDetailViewController01 class]] ) {
        //        view.bulletin = sender;
        ctrl.pagePhone = sender;
    }
    
    
}


@end
