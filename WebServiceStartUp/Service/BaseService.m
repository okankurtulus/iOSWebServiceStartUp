//
//  BaseService.m
//  WebServiceStartUp
//
//  Created by Okan Kurtulus on 04/09/15.
//  Copyright (c) 2015 Okan Kurtulus. All rights reserved.
//

#import "BaseService.h"

@implementation BaseService

-(id)init {
    self = [super init];
    if(self) {
        self.baseUrl = BASE_URL;
        NSLog(@"A Service instance is created");
    }
    return self;
}

-(void)failureWithOperation:(AFHTTPRequestOperation*) operation andError:(NSError*) error {
    NSLog(@"Network Error: %@", error);
    NetworkFailure *failure = [NetworkFailure new];
    failure.error = error;
    PUBLISH(failure);
}

-(void)failureDuringJSONCastWithError:(NSError*) error {
    NSLog(@"JSON cast error: %@", error);
    NetworkFailure *failure = [NetworkFailure new];
    failure.error = error;
    PUBLISH(failure);
}

-(void)failureDuringRequestCreationWithError:(NSError*) error {
    NSLog(@"Create Request error: %@", error);
    NetworkFailure *failure = [NetworkFailure new];
    failure.error = error;
    PUBLISH(failure);
}

@end
