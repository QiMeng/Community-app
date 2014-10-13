//
//  PageViewController.m
//  Community
//
//  Created by QiMENG on 14-9-29.
//  Copyright (c) 2014年 QiMENG_LYS. All rights reserved.
//
//  社区黄页

#import "PageViewController.h"
#import "VerticalButton.h"

#import "PageDetailViewController.h"

@interface PageViewController ()

@property (nonatomic, strong) NSMutableArray * list;

@end

@implementation PageViewController

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
    [self leftDefaultNavBar];
    
}



- (IBAction)touchButton:(VerticalButton *)sender {

    [self performSegueWithIdentifier:@"PageDetailViewController" sender:sender];
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
    
    if ([sender isKindOfClass:[VerticalButton class]]) {
        PageDetailViewController* ctrl = segue.destinationViewController;
        ctrl.title = ((VerticalButton*)sender).titleLabel.text;
 
    }
    
    
}


@end
