//
//  PersonalMainController.m
//  Community
//
//  Created by QiMENG on 14-9-26.
//  Copyright (c) 2014年 QiMENG_LYS. All rights reserved.
//

#import "PersonalMainController.h"
#import "PersonalHeaderCell.h"
@interface PersonalMainController ()

@property (nonatomic, strong) NSMutableArray * dataArray;
@end

@implementation PersonalMainController

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
    self.title = @"个人中心";
    
//    myTableView.separatorColor = [UIColor clearColor];
  
    _dataArray = [NSMutableArray arrayWithArray:@[@{@"icon": @"usercenter_icon_address",@"title":@"地点",@"id":@"address"},
                                                  @{@"icon": @"usercenter_icon_certification",@"title":@"认证",@"id":@""},
                                                  @{@"icon": @"usercenter_icon_remaining",@"title":@"社区币:100",@"id":@""},
                                                  @{@"icon": @"usercenter_icon_mall",@"title":@"社区商城",@"id":@""},
                                                  @{@"icon": @"usercenter_icon_coupons",@"title":@"我的优惠劵",@"id":@""},
                                                  @{@"icon": @"usercenter_icon_reply",@"title":@"回复",@"id":@""},
                                                  @{@"icon": @"usercenter_icon_collection",@"title":@"收藏",@"id":@""},
                                                  @{@"icon": @"usercenter_icon_post",@"title":@"帖子",@"id":@""},
                                                  @{@"icon": @"usercenter_icon_activity",@"title":@"活动",@"id":@""},
                                                  @{@"icon": @"usercenter_icon_vote",@"title":@"投票",@"id":@""},
                                                  @{@"icon": @"usercenter_icon_around",@"title":@"小区周边",@"id":@""},
                                                  @{@"icon": @"usercenter_icon_feedback",@"title":@"意见反馈",@"id":@"Feedback"}]];
    
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 110;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    PersonalHeaderCell * cell = [tableView dequeueReusableCellWithIdentifier:@"PersonalHeaderCell"];
    return cell;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dataArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 48;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSDictionary * item = _dataArray[indexPath.row];
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.imageView.image = [UIImage imageNamed:[item objectForKeyNotNull:@"icon"]];
    
    cell.textLabel.text = [item objectForKeyNotNull:@"title"];
    cell.textLabel.backgroundColor = [UIColor clearColor];
    
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSDictionary * item = _dataArray[indexPath.row];
    
    NSString * idStr = [item objectForKeyNotNull:@"id"];
    
    //意见反馈
    if ([idStr isEqualToString:@"Feedback"]) {
        [self performSegueWithIdentifier:@"FeedbackViewController" sender:self];
    }
    
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
