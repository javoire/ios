//
//  SCEventBuilder.h
//  Sthlmclub
//
//  Created by Jonatan Dahl on 25/05/14.
//  Copyright (c) 2014 Jonatan Dahl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SCEventBuilder : NSObject

+ (NSArray *)eventsFromJSON:(NSData *)objectNotation error:(NSError **)error;

@end
