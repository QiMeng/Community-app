//
//  BulletinViewController.m
//  Community
//
//  Created by QiMENG on 14-9-29.
//  Copyright (c) 2014年 QiMENG_LYS. All rights reserved.

//  社区公告

#import "BulletinViewController.h"
#import "BulletinCell.h"
@interface BulletinViewController ()

@property (nonatomic, strong) NSMutableArray * list;
@end

@implementation BulletinViewController

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
    
    [kSverviceInstance loadBulletinUserID:@"" callBack:self];
    
}
- (void)loadBulletinListCallBack:(long)retCode msg:(NSString*)msg bulletinList:(NSArray *)bulletinList {
    
    _list = [NSMutableArray arrayWithArray:bulletinList];
    [_myTableView reloadData];
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _list.count;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    BulletinCell * cell = [tableView dequeueReusableCellWithIdentifier:@"BulletinCell" forIndexPath:indexPath];
    
    cell.bulletin = _list[indexPath.row];
    
    return cell;
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
