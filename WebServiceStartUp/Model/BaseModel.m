//
//  BaseModel.m
//  WebServiceStartUp
//
//  Created by Okan Kurtulus on 04/09/15.
//  Copyright (c) 2015 Okan Kurtulus. All rights reserved.
//

#import "BaseModel.h"

@implementation BaseModel

-(id) init {
    self = [super init];
    if(self) {
        REGISTER();
    }
    return self;
}

@end
