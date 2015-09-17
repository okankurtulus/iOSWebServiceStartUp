//
//  BaseViewController.h
//  WebServiceStartUp
//
//  Created by Okan Kurtulus on 04/09/15.
//  Copyright (c) 2015 Okan Kurtulus. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBProgressHUD.h"

@interface BaseViewController : UIViewController
@property(strong, nonatomic) MBProgressHUD *hud;
@end
