//
//  Location.h
//  WebServiceStartUp
//
//  Created by Okan Kurtulus on 04/09/15.
//  Copyright (c) 2015 Okan Kurtulus. All rights reserved.
//

#import "JSONModel.h"

@interface Location : JSONModel
@property(strong, nonatomic) NSNumber *id;
@property(strong, nonatomic) NSString *name;
@end
