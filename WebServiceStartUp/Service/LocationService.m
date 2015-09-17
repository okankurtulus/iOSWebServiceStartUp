//
//  LocationService.m
//  WebServiceStartUp
//
//  Created by Okan Kurtulus on 04/09/15.
//  Copyright (c) 2015 Okan Kurtulus. All rights reserved.
//

#import "LocationService.h"

@implementation LocationService

-(id)init {
    self = [super init];
    if(self) {
        NSLog(@"It is a LocationService instance");
    }
    return self;
}

-(void) retrieveLocationList
{
    NSString *url = [NSString stringWithFormat:@"%@%@", self.baseUrl, ENDPOINT_LOCATION];
    NSLog(@"Making service call");
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:url parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"Response Success : %@", responseObject);
        NSError *error;
        NSMutableArray *locationArray = [NSMutableArray new];
        for (NSDictionary *dict in responseObject) {
            Location *location = [[Location alloc] initWithDictionary:dict error:&error];
            if(error) {
                [self failureDuringJSONCastWithError:error];
                break;
            }
            [locationArray addObject:location];
        }
        
        if(!error) {
            LocationsRetrieved *locationsRetrievedEvent = [LocationsRetrieved new];
            locationsRetrievedEvent.locationArray = locationArray;
            PUBLISH(locationsRetrievedEvent);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Response Failure : %@", operation);
        [self failureWithOperation:operation andError:error];
    }];
}

@end
