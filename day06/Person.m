//
//  Person.m
//  day06
//
//  Created by Phoenix Fate on 2020/2/28.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import "Person.h"

@implementation Person
- (void)run{
    NSLog(@"person run");
}

- (void)dealloc
{
    NSLog(@"%s %d",__func__,_age);
    [super dealloc];
}
+ (instancetype)person{
    return [[[self alloc]init] autorelease];
}
+(instancetype)personWithAge:(int)age{
    Person *p=[[Person alloc]init];
    p.age=age;
    return [p autorelease];
}
@end
