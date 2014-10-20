//
//  ReplyViewController.m
//  Community
//
//  Created by 永生刘 on 14/10/20.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "ReplyViewController.h"
#import "YFInputBar.h"
#import "ReplyCell.h"
#import "ReplyCell01.h"
#import "ReplyCell02.h"
#import "ReplyViewController01.h"
@interface ReplyViewController () <YFInputBarDelegate>{
    
    YFInputBar *inputBar;
    
    __weak IBOutlet UITableView *myTableView;
}

@end

@implementation ReplyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self leftDefaultNavBar];
    
    myTableView.delegate = self;
    myTableView.dataSource = self;
    
    inputBar = [[YFInputBar alloc]initWithFrame:CGRectMake(0, self.view.height - 50, 320, 50)];
    inputBar.backgroundColor = [UIColor whiteColor];
    inputBar.autoresizingMask = UIViewAutoresizingFlexibleTopMargin;
    
    
    inputBar.delegate = self;
    inputBar.clearInputWhenSend = YES;
    inputBar.resignFirstResponderWhenSend = YES;
    
    [self.view addSubview:inputBar];
    
}
-(void)inputBar:(YFInputBar *)inputBar sendBtnPress:(UIButton *)sendBtn withInputString:(NSString *)str
{
    NSLog(@"%@",str);
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view.subviews enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [((UIView*)obj) resignFirstResponder];
    }];
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row == 0) {
        return 100;
    }
    if (indexPath.row == 1) {
        return 120;
    }
//    if (indexPath.row == 2) {
//        return 75;
//    }
    
    return 75;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row == 0) {
        ReplyCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ReplyCell"];
        if(!cell) {
            cell = [[[NSBundle mainBundle] loadNibNamed:@"ReplyCell" owner:self options:nil]lastObject];
        }
        return cell;
    }
    if (indexPath.row == 1) {
        ReplyCell01 *cell = [tableView dequeueReusableCellWithIdentifier:@"ReplyCell01"];
        if(!cell) {
            cell = [[[NSBundle mainBundle] loadNibNamed:@"ReplyCell01" owner:self options:nil]lastObject];
        }
        return cell;
    }
    
//    if (indexPath.row == 2) {
        ReplyCell02 *cell = [tableView dequeueReusableCellWithIdentifier:@"ReplyCell02"];
        if(!cell) {
            cell = [[[NSBundle mainBundle] loadNibNamed:@"ReplyCell02" owner:self options:nil]lastObject];
        }
        return cell;
        
//    }

    
    
    return nil;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row < 2) {
        return;
    }
    
    ReplyViewController01 * ctrl = [[ReplyViewController01 alloc]initWithNibName:@"ReplyViewController01" bundle:nil];
    ctrl.title = @"回复喝奶";
    [self.navigationController pushViewController: ctrl animated:YES];
    
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
