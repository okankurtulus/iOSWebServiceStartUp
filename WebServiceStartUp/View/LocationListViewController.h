//
//  LocationListViewController.h
//  WebServiceStartUp
//
//  Created by Okan Kurtulus on 04/09/15.
//  Copyright (c) 2015 Okan Kurtulus. All rights reserved.
//

#import "BaseViewController.h"
#import "LocationListViewModel.h"

@interface LocationListViewController : BaseViewController <UITableViewDataSource, UITableViewDelegate, LocationListViewModelDelegate>

@property(strong, nonatomic) LocationListViewModel *LocationListViewModel;
@property(weak, nonatomic) IBOutlet UITableView *tableView;

@end