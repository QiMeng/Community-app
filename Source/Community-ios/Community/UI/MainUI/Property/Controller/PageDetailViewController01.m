//
//  PageDetailViewController01.m
//  Community
//
//  Created by 永生刘 on 14/10/14.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "PageDetailViewController01.h"
#import "PageHeaderCell.h"
#import "PageAssessCell.h"
@interface PageDetailViewController01 ()

@end

@implementation PageDetailViewController01

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self leftDefaultNavBar];
    self.title = _pagePhone.title;
    
    
    [phoneBtn setBackgroundImage:[UIImage imageAliquotsTensile:@"property_btn_tel_nor"] forState:UIControlStateNormal];
    [phoneBtn setBackgroundImage:[UIImage imageAliquotsTensile:@"property_btn_tel_hl"] forState:UIControlStateHighlighted];
    [phoneBtn setTitle:_pagePhone.phone forState:UIControlStateNormal];
}
- (IBAction)touchPhone:(id)sender {
    
    NSMutableString * str=[[NSMutableString alloc] initWithFormat:@"tel:%@",_pagePhone.phone];
    //    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:str]];
    
    //返回应用
    UIWebView * callWebview = [[UIWebView alloc] init];
    [callWebview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:str]]];
    [self.view addSubview:callWebview];
    
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _pagePhone.assess.count+1;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row == 0 ) {
        return 212;
    }
    
    return 65;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row == 0 ) {
        PageHeaderCell * cell = [tableView dequeueReusableCellWithIdentifier:@"PageHeaderCell" forIndexPath:indexPath];
        
        cell.pagePhone = _pagePhone;
        
            return cell;
    }
    
    
    
    PageAssessCell * cell = [tableView dequeueReusableCellWithIdentifier:@"PageAssessCell" forIndexPath:indexPath];
    cell.infoDic = _pagePhone.assess[indexPath.row-1];
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
