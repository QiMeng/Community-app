//
//  ExpressViewController01.h
//  Community
//
//  Created by 永生刘 on 14/10/10.
//  Copyright (c) 2014年 QiMENG. All rights reserved.
//

#import "QMViewController.h"
#import "Express.h"
@interface ExpressViewController01 : QMViewController {
    
    __weak IBOutlet UILabel *titleLabel;
    
    __weak IBOutlet UILabel *acceptLabel;
    
    __weak IBOutlet UILabel *totimeLabel;
    __weak IBOutlet UILabel *fromtimeLabel;
    
    __weak IBOutlet UILabel *posterLabel;
    
    __weak IBOutlet UILabel *phoneLabel;
    
    __weak IBOutlet UILabel *jobnumLabel;
    
    __weak IBOutlet UILabel *pwdLabel;

}

@property (nonatomic, strong) Express * express;

@end
