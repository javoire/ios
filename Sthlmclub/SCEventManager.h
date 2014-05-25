//
//  SCEventManager.h
//  Sthlmclub
//
//  Created by Jonatan Dahl on 25/05/14.
//  Copyright (c) 2014 Jonatan Dahl. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "SCEventManagerDelegate.h"
#import "SCCommunicatorDelegate.h"

@class SCCommunicator;

@interface SCEventManager : NSObject<SCEventManagerDelegate>
@property (strong, nonatomic) SCCommunicator *communicator;
@property (weak, nonatomic) id<SCEventManagerDelegate> delegate;

- (void)fetchEvents;
@end
