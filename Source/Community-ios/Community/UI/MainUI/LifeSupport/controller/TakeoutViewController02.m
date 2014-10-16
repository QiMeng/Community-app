//
//  TakeoutViewController02.m
//  Community
//
//  Created by 永生刘 on 14/10/16.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "TakeoutViewController02.h"
#import "TakeoutCell.h"
#import "Takeout.h"
#import <SVProgressHUD.h>
@interface TakeoutViewController02 () <TakeoutCellDelegate>

@end

@implementation TakeoutViewController02

- (void)viewDidLoad {
    [super viewDidLoad];
    [self leftDefaultNavBar];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    takeCell.takout = [_list firstObject];
    takeCell.delegate = self;
    
    
}

- (void)changeTotalprice:(id)sender {
    
    int totalInt = 0;
    float totalPrice = 0;
    for (Takeout * tak in _list) {
        totalInt += tak.amount;
        
        totalPrice += tak.amount*tak.price;
    }
    
    totilLabel.text = [NSString stringWithFormat:@"共%d件 ",totalInt];
    totilPirceLabel.text = [NSString stringWithFormat:@"总计%0.1f元",totalPrice];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)touchSubmit:(id)sender {
    
    [SVProgressHUD showSuccessWithStatus:@"提交订单成功"];
}
#pragma mark - Table view data source

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//
//    return 1;
//}
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//
//    switch (section) {
//        case 0:
//        {
//            return _list.count;
//        }
//            break;
//        case 1:
//        {
//            return 1;
//        }
//            break;
//        case 2:
//        {
//            return 4;
//        }
//            break;
//        case 3:
//        {
//            return 5;
//        }
//            break;
//        case 4:
//        {
//            return 1;
//        }
//            break;
//        default:
//            break;
//    }
//    
//    return 0;
//}
//

//
//
//
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    
//    switch (indexPath.section) {
//        case 0:
//        {
//            TakeoutCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TakeoutCell" forIndexPath:[NSIndexPath indexPathForRow:0 inSection:0]];
//            
//            
//            return cell;
//        }
//            break;
//        case 1:
//        {
//            
//        }
//            break;
//        case 2:
//        {
//            
//        }
//            break;
//        case 3:
//        {
//            
//        }
//            break;
//        case 4:
//        {
//            
//        }
//            break;
//        default:
//            break;
//    }
//    
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell1" forIndexPath:indexPath];
//    
//    // Configure the cell...
//    
//    return cell;
//}
//

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
