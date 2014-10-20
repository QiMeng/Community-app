//
//  UnlockViewController.m
//  Community
//
//  Created by 永生刘 on 14/10/17.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "UnlockViewController.h"
#import "SecurityCallViewController.h"

@interface UnlockViewController ()<NinGridUnlockViewDelegate , UIImagePickerControllerDelegate,UINavigationControllerDelegate>



@end

@implementation UnlockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.password = @"";
    self.state = PasswordUnset;
    
    self.navigationController.navigationBarHidden = YES;
    
    NineGridUnlockView* v = [[NineGridUnlockView alloc] initWithFrame:CGRectMake(0, view01.bottom, self.view.width, self.view.width)];
    v.strokeColor = RGBA(0, 216, 255, 1);
    v.delegate = self;
    [self.view addSubview:v];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)unlockerView:(NineGridUnlockView *)unlockerView didFinished:(NSArray *)points{
    
    if (!points.count) {
        return;
    }
    
    NSString * password = [points componentsJoinedByString:@","];
    
    switch (self.state)
    {
        case PasswordUnset:
        {
            self.password = password;
            self.state = PasswordRepeat;
            [self showSuccessString:@"请再次输入刚才的密码! "];
            
        }
            break;
            
        case PasswordRepeat:
            if ([password isEqualToString:self.password])
            {
                self.state = PasswordExist;
                [self showSuccessString:@"密码设置成功！"];
                
                if (self.typeInt == 0) {
                 
                    [self performSegueWithIdentifier:@"SecurityCallViewController" sender:self];
                    
                }else {
                    
                    UIImagePickerController *ipc = [[UIImagePickerController alloc] init];
                    ipc.sourceType =  UIImagePickerControllerSourceTypeCamera;
                    ipc.delegate = self;
                    ipc.allowsEditing = YES;
                    ipc.videoQuality = UIImagePickerControllerQualityTypeMedium;
                    ipc.videoMaximumDuration = 30.0f; // 30 seconds
                    ///ipc.mediaTypes = [NSArray arrayWithObject:@"public.movie"];
                    //主要是下边的两能数，@"public.movie", @"public.image"  一个是录像，一个是拍照
                    ipc.mediaTypes = [NSArray arrayWithObjects:@"public.movie", nil];
                    //    [self presentModalViewController:ipc animated:YES];
                    [self presentViewController:ipc animated:YES completion:nil];
                    
//                    [self performSegueWithIdentifier:@"SecurityWebcamController" sender:self];
                    
                }
                
            }else {
                [self showErrorString:@"输入的密码不一致,请重试！"];
            }
            break;
            
        case PasswordExist:
            if ([password isEqualToString:self.password])
            {
                [self showSuccessString:@"密码正确！"];
                
            }
            else
            {
                [self showSuccessString:@"密码错误，请重试！"];
            }
            
            break;
            
        default:
            break;
    }
    
    [unlockerView resetView];
    
}
#pragma mark - 相册照片
-(void)imagePickerController:(UIImagePickerController*)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    
     [picker dismissViewControllerAnimated:NO completion:nil];
    [self.navigationController popToRootViewControllerAnimated:YES];
}
-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [picker dismissViewControllerAnimated:NO completion:nil];
    [self.navigationController popToRootViewControllerAnimated:YES];
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