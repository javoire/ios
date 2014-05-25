//
//  SCCommunicator.m
//  Sthlmclub
//
//  Created by Jonatan Dahl on 25/05/14.
//  Copyright (c) 2014 Jonatan Dahl. All rights reserved.
//

#import "SCCommunicator.h"
#import "SCCommunicatorDelegate.h"

@implementation SCCommunicator

- (void)fetchEvents
{
    NSString *urlAsString = @"http://sthlmclub.se/api/events";
//    NSString *urlAsString = @"http://0.0.0.0:3000/api/events";
    NSURL *url = [[NSURL alloc] initWithString:urlAsString];
    NSLog(@"%@", urlAsString);
    
    [NSURLConnection sendAsynchronousRequest:[[NSURLRequest alloc] initWithURL:url]
                                       queue:[[NSOperationQueue alloc] init]
                           completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
        
        if (error) {
            [self.delegate fetchingEventsFailedWithError:error];
        } else {
            [self.delegate receivedEventsJSON:data];
        }
    }];
}

@end
