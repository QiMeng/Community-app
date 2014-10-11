//
//  AddressViewController.h
//  Community
//
//  Created by 永生刘 on 14/10/11.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "QMViewController.h"

@interface AddressViewController : QMViewController {
    
    
    __weak IBOutlet UITextField *communityTF;   //小区
    
    __weak IBOutlet UITextField *floorTF;       //楼号
    
    __weak IBOutlet UITextField *roomTF;    //房号
    
}

@end
