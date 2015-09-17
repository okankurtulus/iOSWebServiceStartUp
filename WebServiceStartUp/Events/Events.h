//
//  Events.h
//  WebServiceStartUp
//
//  Created by Okan Kurtulus on 04/09/15.
//  Copyright (c) 2015 Okan Kurtulus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetworkFailure : NSObject
@property(nonatomic) NSError *error;
@end

@interface LocationsRetrieved : NSObject
@property(nonatomic) NSArray *locationArray;
@end
