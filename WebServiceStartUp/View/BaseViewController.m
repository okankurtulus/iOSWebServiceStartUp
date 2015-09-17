//
//  BaseViewController.m
//  WebServiceStartUp
//
//  Created by Okan Kurtulus on 04/09/15.
//  Copyright (c) 2015 Okan Kurtulus. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];    
}

-(void) networkErrorOccured:(NSError*)error
{
    [MBProgressHUD hideAllHUDsForView:self.view animated:YES];
    NSLog(@"Network error occured: %@", error.description);
}

@end
