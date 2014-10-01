//
//  PageViewController.m
//  Community
//
//  Created by QiMENG on 14-9-29.
//  Copyright (c) 2014年 QiMENG_LYS. All rights reserved.
//
//  社区黄页

#import "PageViewController.h"
#import "PageCell.h"
#import "PageTelPhone.h"
@interface PageViewController () <PageCellDelegate>

@property (nonatomic, strong) NSMutableArray * list;

@end

@implementation PageViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //获取数据
    [kSverviceInstance loadPagesUserID:@"" callBack:self];
}

- (void)loadPagesListCallBack:(long)retCode msg:(NSString*)msg pagesList:(NSArray *)pagesList{
    
    _list = [NSMutableArray arrayWithArray:pagesList];
    
    [_myTableView reloadData];
    
}


#pragma mark - UITableViewDelegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return _list.count;
    
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    PageContainer * con = _list[section];
    return con.name;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    PageContainer * con = _list[section];
    
    return con.telPhoneItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    PageCell * cell = [tableView dequeueReusableCellWithIdentifier:@"PageCell" forIndexPath:indexPath];
    
    cell.delegate = self;
    
    PageContainer * con = _list[indexPath.section];

    cell.telphone = con.telPhoneItems[indexPath.row];
    
    return cell;
}


- (void)callTelPhone:(NSString *)phone {
#warning 拨打电话
    DLog(@"%@",phone);
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
