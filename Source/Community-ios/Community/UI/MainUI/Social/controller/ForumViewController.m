//
//  ForumViewController.m
//  Community
//
//  Created by 永生刘 on 14/10/16.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "ForumViewController.h"
#import "ForumCell.h"

#import "ReplyViewController.h"

@interface ForumViewController ()

@end

@implementation ForumViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self leftDefaultNavBar];
    
    [kSverviceInstance loadForumUserID:@"" callBack:self];
    
}

- (IBAction)touchMenu:(UIButton *)sender {
    sender.selected = ! sender.selected;
    if (sender.selected) {
        [menuView setWidth:240];
        subView.hidden = NO;
    }else {
        [menuView setWidth:60];
        subView.hidden = YES;
    }
}



- (void)loadListCallBack:(long)retCode msg:(NSString*)msg list:(NSArray *)list {
    
    _list = [NSArray arrayWithArray:list];
    
    [myTableView reloadData];
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 50;
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _list.count;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ForumCell * cell = [tableView dequeueReusableCellWithIdentifier:@"ForumCell" forIndexPath:indexPath];
//    cell.delegate = self;
    cell.forum = _list[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ReplyViewController * ctrl = [[ReplyViewController alloc]initWithNibName:@"ReplyViewController" bundle:nil];
    
    ctrl.title = @"详情";
    
    [self.navigationController pushViewController:ctrl animated:YES];
    
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
