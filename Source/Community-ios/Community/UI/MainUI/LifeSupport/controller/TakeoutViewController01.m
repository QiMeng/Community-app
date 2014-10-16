//
//  TakeoutViewController01.m
//  Community
//
//  Created by 永生刘 on 14/10/10.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "TakeoutViewController01.h"
#import "TakeoutCell.h"
#import "Takeout.h"

#import "TakeoutViewController02.h"
@interface TakeoutViewController01 () <TakeoutCellDelegate>

@end

@implementation TakeoutViewController01

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self leftDefaultNavBar];
    
    _list = [NSMutableArray arrayWithArray:@[[Takeout itemFromDic:@{@"name": @"香瓜子",
                                                                    @"price": @"3.5",
                                                                    @"amount": @"0"}]]];
    
    
    [okBtn viewLineColor:RGBA(97, 191, 253, 1) borderWidth:1 cornerRadius:0];
    [okBtn setTitleColor:RGBA(97, 191, 253, 1) forState:UIControlStateNormal];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _list.count;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 70;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    TakeoutCell * cell = [tableView dequeueReusableCellWithIdentifier:@"TakeoutCell" forIndexPath:indexPath];
    cell.delegate = self;
    cell.takout = _list[indexPath.row];
    return cell;
}

- (void)changeTotalprice:(id)sender {
    
    int totalInt = 0;
    float totalPrice = 0;
    for (Takeout * tak in _list) {
        totalInt += tak.amount;
        
        totalPrice += tak.amount*tak.price;
    }
    
    infoLabel.text = [NSString stringWithFormat:@"共%d件 累计价格 %0.1f",totalInt,totalPrice];
    
}
- (IBAction)touchOK:(id)sender {
    
    [self performSegueWithIdentifier:@"TakeoutViewController02" sender:self];
    
    
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
    
    TakeoutViewController02 * ctrl = segue.destinationViewController;
    if ([ctrl isKindOfClass:[TakeoutViewController02 class]]) {
        NSMutableArray * temps = [NSMutableArray array];
        for (Takeout * tak in _list) {
//            if (tak.amount) {
                [temps addObject:tak];
//            }
        }
        ctrl.title = self.title;
        ctrl.list = temps;
    }
    
}


@end
