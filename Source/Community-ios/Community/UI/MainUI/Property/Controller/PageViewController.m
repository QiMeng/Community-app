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
    // Do any additional setup after loading the view.
//    NSArray * tempArray = @[@{@"title": @"物业",@"icon_nor":@"property_btn_maintenance_nor"},
//                            @{@"title": @"物业",@"icon_nor":@"property_btn_maintenance_nor"},
//                            @{@"title": @"物业",@"icon_nor":@"property_btn_maintenance_nor"},
//                            @{@"title": @"物业",@"icon_nor":@"property_btn_maintenance_nor"},
//                            @{@"title": @"物业",@"icon_nor":@"property_btn_maintenance_nor"},
//                            @{@"title": @"物业",@"icon_nor":@"property_btn_maintenance_nor"},
//                            @{@"title": @"物业",@"icon_nor":@"property_btn_maintenance_nor"},
//                            @{@"title": @"物业",@"icon_nor":@"property_btn_maintenance_nor"},
//                            @{@"title": @"物业",@"icon_nor":@"property_btn_maintenance_nor"},
//                            @{@"title": @"物业",@"icon_nor":@"property_btn_maintenance_nor"},
//                            @{@"title": @"物业",@"icon_nor":@"property_btn_maintenance_nor"},
//                            @{@"title": @"物业",@"icon_nor":@"property_btn_maintenance_nor"},
//                            @{@"title": @"物业",@"icon_nor":@"property_btn_maintenance_nor"},
//                            @{@"title": @"物业",@"icon_nor":@"property_btn_maintenance_nor"},
//                            @{@"title": @"物业",@"icon_nor":@"property_btn_maintenance_nor"}];
//    
//    [self loadScrollViewBtnItems:tempArray];
    
}

//- (void)loadScrollViewBtnItems:(NSArray *)items {
//    
//    int numX = 4;
//    int numY = ceil(items.count/4);
//    float width = 1.0*myScrollView.width/numX;
//    
//    for (int y = 0 ; y< numY; y ++) {
//        
//        for (int x = 0; x<numX; x++) {
//            
//            NSDictionary * dic = items[x+y];
//            
//            VerticalButton * btn = [VerticalButton allocButtonFrame:CGRectMake(x*width, y*width, width, width)
//                                                        normalTitle:[dic objectForKeyNotNull:@"title"]
//                                                      selectedTitle:@""
//                                                   normalTitleColor:nil
//                                                 selectedTitleColor:nil
//                                                        normalImage:[UIImage imageNamed:[dic objectForKeyNotNull:@"icon_nor"]]
//                                                      selectedImage:nil
//                                                             target:self
//                                                           selector:nil];
//            btn.tag = x+y +100;
//            [myScrollView addSubview:btn];
//        }
//    }
//    
//}


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
        UIViewController* ctrl = segue.destinationViewController;
        ctrl.title = ((VerticalButton*)sender).titleLabel.text;
    }
    
    
}


@end
