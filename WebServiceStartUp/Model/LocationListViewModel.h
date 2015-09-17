//
//  LocationListViewModel.h
//  WebServiceStartUp
//
//  Created by Okan Kurtulus on 04/09/15.
//  Copyright (c) 2015 Okan Kurtulus. All rights reserved.
//

#import "BaseModel.h"
#import "LocationService.h"

@protocol LocationListViewModelDelegate <BaseModelDelegate>
@required
-(void) retrievedLocationArray;
@end

@interface LocationListViewModel : BaseModel
@property(weak, nonatomic) id<LocationListViewModelDelegate> delegate;
@property(strong, nonatomic) NSArray *locationArray;
-(void) retrieveLocations;

@end
