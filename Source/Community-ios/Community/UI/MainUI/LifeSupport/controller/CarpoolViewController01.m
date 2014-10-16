//
//  CarpoolViewController01.m
//  Community
//
//  Created by 永生刘 on 14/10/16.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "CarpoolViewController01.h"
#import "CarpoolCell.h"
#import "CarpoolCell01.h"
@interface CarpoolViewController01 ()

@end

@implementation CarpoolViewController01

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self leftDefaultNavBar];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _carpool.replys.count+1;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row ==0) {
        return 141;
    }
    
   return 64;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row == 0 ) {
        CarpoolCell * cell = [tableView dequeueReusableCellWithIdentifier:@"CarpoolCell" forIndexPath:indexPath];
        cell.carpool = _carpool;
        
        return cell;
    }
    
    CarpoolCell01 * cell = [tableView dequeueReusableCellWithIdentifier:@"CarpoolCell01" forIndexPath:indexPath];
    cell.infoDic = _carpool.replys[indexPath.row-1];
    
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
