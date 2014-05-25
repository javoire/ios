//
//  SCEventBuilder.m
//  Sthlmclub
//
//  Created by Jonatan Dahl on 25/05/14.
//  Copyright (c) 2014 Jonatan Dahl. All rights reserved.
//

#import "SCEventBuilder.h"
#import "SCEvent.h"

@implementation SCEventBuilder
+ (NSArray *)eventsFromJSON:(NSData *)objectNotation error:(NSError **)error
{
    NSError *localError = nil;
    NSDictionary *parsedObject = [NSJSONSerialization JSONObjectWithData:objectNotation options:0 error:&localError];
    
    if (localError != nil) {
        *error = localError;
        return nil;
    }
    
    NSMutableArray *events = [[NSMutableArray alloc] init];
    
    NSArray *results = [parsedObject valueForKey:@"events"];
    NSLog(@"Count %d", results.count);
    
    for (NSDictionary *eventDic in results) {
        SCEvent *event = [[SCEvent alloc] init];
        
        for (NSString *key in eventDic) {
            if ([event respondsToSelector:NSSelectorFromString(key)]) {
                [event setValue:[eventDic valueForKey:key] forKey:key];
            }
        }
        
        [events addObject:event];
    }
    
    return events;
}

@end
