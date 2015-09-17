//
//  LocationListViewModel.m
//  WebServiceStartUp
//
//  Created by Okan Kurtulus on 04/09/15.
//  Copyright (c) 2015 Okan Kurtulus. All rights reserved.
//

#import "LocationListViewModel.h"

@implementation LocationListViewModel

-(void) retrieveLocations
{
    NSLog(@"Triggering the service");
    [[LocationService new] retrieveLocationList];
}

SUBSCRIBE(LocationsRetrieved) {
    NSLog(@"Service retrieved locations");
    self.locationArray = event.locationArray;
    [self.delegate retrievedLocationArray];
}

@end
