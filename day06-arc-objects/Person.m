//
//  Person.m
//  day06-arc-objects
//
//  Created by Phoenix Fate on 2020/2/28.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import "Person.h"

@implementation Person
- (void)dealloc
{
    NSLog(@"%s; age=%d",__func__,_age);
}
@end
