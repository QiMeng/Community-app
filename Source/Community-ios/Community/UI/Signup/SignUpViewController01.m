//
//  SignUpViewController01.m
//  Community
//
//  Created by QiMENG on 14-9-26.
//  Copyright (c) 2014年 QiMENG_LYS. All rights reserved.
//

#import "SignUpViewController01.h"
#import "SignAddressViewController.h"
@interface SignUpViewController01 () <UITextFieldDelegate> {
    
    __weak IBOutlet UITextField *areaTF;    //地区
    __weak IBOutlet UITextField *communityTF;   //小区名
    __weak IBOutlet UITextField *floorTF;   //楼号
    __weak IBOutlet UITextField *unitTF;    //单元
    
    
    
}

@end

@implementation SignUpViewController01

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
    
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    areaTF.text = kQMUserInfo.signarea;
    communityTF.text = kQMUserInfo.signcommunity;
    floorTF.text = kQMUserInfo.signfloor;
    unitTF.text = kQMUserInfo.signunit;
}



#pragma mark - 下一页
- (IBAction)nextViewController:(id)sender {
    
    NSString * error = nil;

    if (!unitTF.text.length) {
        error = @"请填写单元";
    }
    if (!floorTF.text.length) {
        error = @"请选择楼号";
    }
    if (!communityTF.text.length) {
        error = @"请选择小区";
    }
    if (!areaTF.text.length) {
        error = @"请选择地区";
    }

    if (error) {
        [self showErrorString:error];
        return;
    }
    
    
     [self performSegueWithIdentifier:@"SignUpViewController02" sender:self];
    

    
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    
    DLog(@"%@",textField.placeholder);

    [self performSegueWithIdentifier:@"SignAddressViewController" sender:self];
    
    [textField resignFirstResponder];
    return NO;
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
    
    UINavigationController * theNav = segue.destinationViewController;
    
    if ([theNav isKindOfClass:[QMNavigationController class]]) {
        SignAddressViewController * ctrl = (SignAddressViewController *)theNav.visibleViewController;
        
        if ([ctrl isKindOfClass:[SignAddressViewController class]]) {
            
//            [ctrl leftDefaultNavBar];
            
            UIImage *img = [UIImage imageNamed:@"public_btn_back_nor"];
            UIButton *button = nil;
            CGSize size = CGSizeMake(0, 0);
            button = [UIButton allocButtonFrame:CGRectMake(0, 0, img.width + size.width + 5, self.navigationController.navigationBar.height)
                                    normalTitle:nil
                                  selectedTitle:nil
                               normalTitleColor:[UIColor blackColor]
                             selectedTitleColor:nil
                                backgroundColor:nil
                                      titleFont:nil
                                    normalImage:img
                                  selectedImage:nil
                                  normalBgImage:nil
                                selectedBgImage:nil
                                         target:ctrl
                                       selector:@selector(leftNavBar01:)
                               autoresizingMask:UIViewAutoresizingNone];
            
            UIBarButtonItem *barBtn = [[UIBarButtonItem alloc]initWithCustomView:button];
            
            ctrl.navigationItem.leftBarButtonItem = barBtn;
            
            
            
            NSString *path = [[NSBundle mainBundle] pathForResource:@"sign" ofType:@"plist"];
            NSDictionary * modelDic = [[NSMutableDictionary alloc] initWithContentsOfFile:path];
            
            NSArray * pArray = [modelDic objectForKeyNotNull:@"signlist"];
            
            ctrl.list = pArray;
        }
    }
    

}


@end
