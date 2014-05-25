//
//  SCEventManagerDelegate.h
//  Sthlmclub
//
//  Created by Jonatan Dahl on 25/05/14.
//  Copyright (c) 2014 Jonatan Dahl. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SCEventManagerDelegate <NSObject>
- (void)didReceiveEvents:(NSArray *)events;
- (void)fetchingEventsFailedWithError:(NSError *)error;
@end
