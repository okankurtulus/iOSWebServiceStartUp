//
//  BaseModel.h
//  WebServiceStartUp
//
//  Created by Okan Kurtulus on 04/09/15.
//  Copyright (c) 2015 Okan Kurtulus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tolo.h"
#import "Events.h"


@protocol BaseModelDelegate <NSObject>
@optional
-(void) networkErrorOccured:(NSError*)error;
@end

@interface BaseModel : NSObject

@end
