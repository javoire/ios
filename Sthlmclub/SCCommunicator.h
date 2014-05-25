//
//  SCCommunicator.h
//  Sthlmclub
//
//  Created by Jonatan Dahl on 25/05/14.
//  Copyright (c) 2014 Jonatan Dahl. All rights reserved.
//

@protocol SCCommunicatorDelegate;

@interface SCCommunicator : NSObject
@property (weak, nonatomic) id<SCCommunicatorDelegate> delegate;

- (void)fetchEvents;
@end
