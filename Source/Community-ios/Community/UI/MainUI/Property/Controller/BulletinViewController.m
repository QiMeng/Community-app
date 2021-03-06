//
//  BulletinViewController.m
//  Community
//
//  Created by QiMENG on 14-9-29.
//  Copyright (c) 2014年 QiMENG_LYS. All rights reserved.

#import "BulletinViewController.h"
#import "BulletinCell.h"
#import "BulletinDetailViewController.h"
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
    [self leftDefaultNavBar];
    [kSverviceInstance loadBulletinUserID:@"" callBack:self];
    
}

- (IBAction)touchSegmented:(UISegmentedControl *)sender {
    
    
    NSInteger Index = sender.selectedSegmentIndex;

    switch (Index) {
            
        case 0:
            [kSverviceInstance loadBulletinUserID:@"" callBack:self];
            break;
            
        case 1:
            
            [kSverviceInstance loadBulletinNewUserID:@"" callBack:self];
            break;
        default:
            
            break;
            
    }
}

//公告
- (void)loadBulletinListCallBack:(long)retCode msg:(NSString*)msg bulletinList:(NSArray *)bulletinList {
    
    _list = [NSMutableArray arrayWithArray:bulletinList];
    [_myTableView reloadData];
    
}

//新闻
- (void)loadBulletinNewListCallBack:(long)retCode msg:(NSString*)msg bulletinList:(NSArray *)bulletinList {
    
    _list = [NSMutableArray arrayWithArray:bulletinList];
    [_myTableView reloadData];
    
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _list.count;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 50;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    BulletinCell * cell = [tableView dequeueReusableCellWithIdentifier:@"BulletinCell" forIndexPath:indexPath];
    
    cell.bulletin = _list[indexPath.row];
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [self performSegueWithIdentifier:@"BulletinDetailViewController" sender:_list[indexPath.row]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    BulletinDetailViewController* view = segue.destinationViewController;

    if ([view isKindOfClass:[BulletinDetailViewController class]] && [sender isKindOfClass:[Bulletin class]]) {
        view.bulletin = sender;
    }
    
}


@end
