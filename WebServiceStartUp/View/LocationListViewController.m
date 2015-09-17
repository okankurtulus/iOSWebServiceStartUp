//
//  LocationListViewController.m
//  WebServiceStartUp
//
//  Created by Okan Kurtulus on 04/09/15.
//  Copyright (c) 2015 Okan Kurtulus. All rights reserved.
//

#import "LocationListViewController.h"

@interface LocationListViewController ()

@end

@implementation LocationListViewController {
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = LOC(@"Location List",@"Page title");
    self.LocationListViewModel = [LocationListViewModel new];
    self.LocationListViewModel.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    self.LocationListViewModel = nil;
}

-(void) viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    self.hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    [self.LocationListViewModel retrieveLocations];
}

#pragma mark - TableView DataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.LocationListViewModel.locationArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    UILabel *label = (UILabel*)[cell viewWithTag:1];
    Location *location = [self.LocationListViewModel.locationArray objectAtIndex:indexPath.row];
    label.text = location.name;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Location *location = [self.LocationListViewModel.locationArray objectAtIndex:indexPath.row];
    NSLog(@"Selected Location is %@", location.name);
}

#pragma mark - LocationListViewModelDelegate
-(void) retrievedLocationArray {
    [self.hud hide:YES];
    [self.tableView reloadData];
}

@end
