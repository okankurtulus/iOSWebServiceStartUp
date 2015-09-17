//
//  BaseService.h
//  WebServiceStartUp
//
//  Created by Okan Kurtulus on 04/09/15.
//  Copyright (c) 2015 Okan Kurtulus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"
#import "Tolo.h"
#import "Events.h"
#import "Util.h"

//REMOTE SERVICE ENDPOINT
#define BASE_URL            @"http://enntaze.com/ticketbooking"
#define ENDPOINT_LOCATION   @"/crud/location"

@interface BaseService : NSObject
@property(strong, nonatomic) NSString *baseUrl;

-(void)failureWithOperation:(AFHTTPRequestOperation*) operation andError:(NSError*) error;
-(void)failureDuringJSONCastWithError:(NSError*) error;
-(void)failureDuringRequestCreationWithError:(NSError*) error;
@end
