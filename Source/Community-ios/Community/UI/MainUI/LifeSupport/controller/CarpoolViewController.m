//
//  CarpoolViewController.m
//  Community
//
//  Created by 永生刘 on 14/10/10.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "CarpoolViewController.h"
#import "CarpoolCell.h"
#import "Carpool.h"
#import "CarpoolViewController01.h"
@interface CarpoolViewController ()

@end

@implementation CarpoolViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self leftDefaultNavBar];
    
    if (!selectList) {
        selectList = [[NSMutableArray alloc]init];
        selectInt = 0;
    }
    
    [kSverviceInstance  loadCarpoolUserID:@"" callBack:self];
}
- (void)loadListCallBack:(long)retCode msg:(NSString*)msg list:(NSArray *)list {
    _list = [NSMutableArray arrayWithArray:list];
    
    [selectList removeAllObjects];
    
    for (Carpool * car in _list) {
        
        if (car.type == selectInt) {
            [selectList addObject:car];
        }
        
    }
    
    [myTableView reloadData];
    
}
- (IBAction)touchChange:(UISegmentedControl *)sender {
    
    selectInt = sender.selectedSegmentIndex;
    
    [selectList removeAllObjects];
    
    for (Carpool * car in _list) {
        
        if (car.type == selectInt) {
            [selectList addObject:car];
        }
    }

    [myTableView reloadData];
}

- (IBAction)touchMenu:(UIButton *)sender {
    
    sender.selected = !sender.selected;
    
    if (sender.selected) {
        [menuView setWidth:180];
        subView.hidden = NO;
    }else {
        [menuView setWidth:60];
        subView.hidden = YES;
    }
    
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return selectList.count;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 141;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    CarpoolCell * cell = [tableView dequeueReusableCellWithIdentifier:@"CarpoolCell" forIndexPath:indexPath];
    cell.carpool = selectList[indexPath.row];
    //    cell.textLabel.text = _lists[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [self performSegueWithIdentifier:@"CarpoolViewController01" sender:selectList[indexPath.row]];
    
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
    CarpoolViewController01 * ctrl = segue.destinationViewController;
    
    if ([ctrl isKindOfClass:[CarpoolViewController01 class]]) {
        
        if (selectInt == 0) {
            ctrl.title = @"找车主";
        }else {
            ctrl.title = @"找乘客";
        }
        
        
        ctrl.carpool = sender;
    }
    
}


@end
