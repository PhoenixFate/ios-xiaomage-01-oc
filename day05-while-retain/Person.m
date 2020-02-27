//
//  Person.m
//  day05-while-retain
//
//  Created by Phoenix Fate on 2020/2/27.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import "Person.h"
#import "Dog.h"

@implementation Person
- (void)dealloc
{
    NSLog(@"%s",__func__);
    [_dog release];
    _dog=nil;
    [super dealloc];
}
@end
