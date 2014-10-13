//
//  SignUpViewController02.m
//  Community
//
//  Created by QiMENG on 14-9-26.
//  Copyright (c) 2014年 QiMENG_LYS. All rights reserved.
//

#import "SignUpViewController02.h"

@interface SignUpViewController02 () <UITextFieldDelegate>

@property (nonatomic, strong) NSArray * list;

@end

@implementation SignUpViewController02

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
    
    myTableView.hidden = YES;
    
    _list = @[@"父亲",@"母亲"];
    
    myTableView.backgroundColor = [UIColor clearColor];
    [myTableView viewLineColor:[UIColor whiteColor] borderWidth:1 cornerRadius:0];
    
    
    [dutyTF viewLineColor:[UIColor whiteColor] borderWidth:1 cornerRadius:0];
    
    phone00.text = [kQMUserInfo.signphone substringWithRange:NSMakeRange(0,3)];
    phone01.text = [kQMUserInfo.signphone substringWithRange:NSMakeRange(6,2)];
    
}

- (IBAction)touchNext:(id)sender {
    
    NSString * error = nil;
    
    NSString * phone = [NSString stringWithFormat:@"%@%@%@%@",phone00,phoneTF,phone01,phone01TF];
    
    if (pwdTF.text != agreePwdTF.text) {
        error = @"两个密码不一致,请重新输入";
    }
    
    if (!pwdTF.text.length) {
        error = @"密码不能为空";
    }
    
    if (phone != kQMUserInfo.phone) {
        error = @"请输入正确的屋主预留手机号.";
    }



    if (error) {
        [self showErrorString:error];
        return;
    }
    
    [self performSegueWithIdentifier:@"SignUpViewController03" sender:self];

    
    
    
    
    
}








- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 25;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    UIView * view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, myTableView.width, 25)];
    view.backgroundColor = RGBA(142, 201, 251, 1);
    UILabel * tempLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 0, 80, 25)];
    tempLabel.backgroundColor = [UIColor clearColor];
    tempLabel.text = @"请选择";
    tempLabel.textColor = [UIColor whiteColor];
    tempLabel.font = [UIFont systemFontOfSize:13];
    [view addSubview:tempLabel];
    
    UIImageView * arrow = [[UIImageView alloc]initWithFrame:CGRectMake(view.right - 40, 0, 40, 25)];
    arrow.image = [UIImage imageNamed:@"login_icon_Pulldown"];
    arrow.contentMode = UIViewContentModeCenter;
    [view addSubview:arrow];
    
    
    return view;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _list.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 30;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell  = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        cell.backgroundColor = [UIColor clearColor];
        cell.textLabel.font = [UIFont systemFontOfSize:12];
        cell.textLabel.textColor = [UIColor whiteColor];
    }
    
    cell.textLabel.text = _list[indexPath.row];
 
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    dutyTF.text = [NSString stringWithFormat:@"  %@",_list[indexPath.row]];
    
    myTableView.hidden = YES;
    
}
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    
    if (textField == dutyTF) {
        myTableView.hidden = NO;
        
        [textField resignFirstResponder];
        return NO;
    }
    
    return YES;
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
