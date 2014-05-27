//
//  SCEvent.h
//  Sthlmclub
//
//  Created by Jonatan Dahl on 25/05/14.
//  Copyright (c) 2014 Jonatan Dahl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SCEvent : NSObject
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *description;
@property (strong, nonatomic) NSString *host;
@property (strong, nonatomic) NSString *startsAt;
@property (strong, nonatomic) NSString *endsAt;
@end
