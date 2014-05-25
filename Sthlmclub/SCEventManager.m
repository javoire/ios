//
//  SCEventManager.m
//  Sthlmclub
//
//  Created by Jonatan Dahl on 25/05/14.
//  Copyright (c) 2014 Jonatan Dahl. All rights reserved.
//

#import "SCEventManager.h"
#import "SCEventBuilder.h"
#import "SCCommunicator.h"

@implementation SCEventManager

- (void)fetchEvents
{
    [self.communicator fetchEvents];
}

#pragma mark - SCCommunicatorDelegate

- (void)receivedEventsJSON:(NSData *)objectNotation
{
    NSError *error = nil;
    NSArray *events = [SCEventBuilder eventsFromJSON:objectNotation error:&error];
    
    if (error != nil) {
        [self.delegate fetchingEventsFailedWithError:error];
    } else {
        [self didReceiveEvents:events];
    }
}

- (void)fetchingEventsFailedWithError:(NSError *)error
{
    [self.delegate fetchingEventsFailedWithError:error];
}

- (void)didReceiveEvents:(NSArray *)events
{
    [self.delegate didReceiveEvents:events];
}

@end
