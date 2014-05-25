//
//  SCCommunicatorDelegate.h
//  Sthlmclub
//
//  Created by Jonatan Dahl on 25/05/14.
//  Copyright (c) 2014 Jonatan Dahl. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SCCommunicatorDelegate <NSObject>
- (void)receivedEventsJSON:(NSData *)objectNotation;
- (void)fetchingEventsFailedWithError:(NSError *)error;
@end
