//
//  Person.m
//  day04-class-factory
//
//  Created by Phoenix Fate on 2020/2/23.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import "Person.h"

@implementation Person
+ (instancetype)person{
    return [[self alloc] init];
}

+ (instancetype)personWithAge:(int)age{
    Person *person=[[self alloc] init];
    person.age=age;
    return person;
}

@end
