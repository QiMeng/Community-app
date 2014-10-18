//
//  CallViewController02.m
//  Community
//
//  Created by 永生刘 on 14/10/18.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "CallViewController02.h"
#import "CallCell02.h"
@interface CallViewController02 ()

@property (nonatomic, strong) NSArray * list;

@end

@implementation CallViewController02

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self leftDefaultNavBar];
    
    _list = @[@"救命!救命,快来救我!再不来就嗝屁了.",
              @"着火了,快帮我大119,任命官田,不是开玩笑的.",
              @"十万火急,快回家!不回家,我准备换人了.",
              @"恐怖分子发动突然袭击,奥巴马被抓起来了."];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _list.count;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 64;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    CallCell02 * cell = [tableView dequeueReusableCellWithIdentifier:@"CallCell02" forIndexPath:indexPath];

    cell.subLabel.text = _list[indexPath.row];
    
    
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
