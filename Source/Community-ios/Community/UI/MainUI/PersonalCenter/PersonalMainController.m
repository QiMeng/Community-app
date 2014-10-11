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
    
//    myTableView.separatorColor = [UIColor clearColor];
  
    _dataArray = [NSMutableArray arrayWithArray:@[@{@"icon": @"usercenter_icon_address",@"title":@"地点",@"id":@"address"},
                                                  @{@"icon": @"usercenter_icon_certification",@"title":@"认证",@"id":@""},
                                                  @{@"icon": @"usercenter_icon_remaining",@"title":@"社区币:100",@"id":@"currency"},
                                                  @{@"icon": @"usercenter_icon_mall",@"title":@"社区商城",@"id":@"mall"},
                                                  @{@"icon": @"usercenter_icon_coupons",@"title":@"我的优惠劵",@"id":@""},
                                                  @{@"icon": @"usercenter_icon_reply",@"title":@"回复",@"id":@"posts"},
                                                  @{@"icon": @"usercenter_icon_collection",@"title":@"收藏",@"id":@"favorites"},
                                                  @{@"icon": @"usercenter_icon_post",@"title":@"帖子",@"id":@"posts"},
                                                  @{@"icon": @"usercenter_icon_activity",@"title":@"活动",@"id":@""},
                                                  @{@"icon": @"usercenter_icon_vote",@"title":@"投票",@"id":@""},
                                                  @{@"icon": @"usercenter_icon_around",@"title":@"小区周边",@"id":@""},
                                                  @{@"icon": @"usercenter_icon_feedback",@"title":@"意见反馈",@"id":@"Feedback"}]];
    
    
}

//- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
//    return 110;
//}
//
//- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
//    
//    PersonalHeaderCell * cell = [tableView dequeueReusableCellWithIdentifier:@"PersonalHeaderCell"];
//    return cell;
//    
//}
//
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dataArray.count+1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row == 0) {
        return 110;
    }
    
    return 48;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row == 0) {
        PersonalHeaderCell * cell = [tableView dequeueReusableCellWithIdentifier:@"PersonalHeaderCell"];
        return cell;
    }
    
    
    NSDictionary * item = _dataArray[indexPath.row-1];
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.imageView.image = [UIImage imageNamed:[item objectForKeyNotNull:@"icon"]];
    
    cell.textLabel.text = [item objectForKeyNotNull:@"title"];
    
    cell.textLabel.backgroundColor = [UIColor clearColor];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row == 0) {
        return;
    }
    
    NSDictionary * item = _dataArray[indexPath.row-1];
    
    NSString * idStr = [item objectForKeyNotNull:@"id"];
    
    //意见反馈
    if ([idStr isEqualToString:@"Feedback"]) {
        [self performSegueWithIdentifier:@"FeedbackViewController" sender:self];
    }
    //社区币
    else if ([idStr isEqualToString:@"currency"]) {
        [self performSegueWithIdentifier:@"CurrencyViewController" sender:self];
    }
    //商城
    else if ([idStr isEqualToString:@"mall"]) {
        [self performSegueWithIdentifier:@"MallViewController" sender:self];
    }
    //收藏
    else if ([idStr isEqualToString:@"favorites"]) {
        
        [self performSegueWithIdentifier:@"FavoritesViewController" sender:self];
    }
    //帖子
    else if ([idStr isEqualToString:@"posts"]) {
        
        [self performSegueWithIdentifier:@"PostsViewController" sender:self];
    }
    //地址
    else if ([idStr isEqualToString:@"address"]) {
        
        [self performSegueWithIdentifier:@"AddressViewController" sender:self];
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
