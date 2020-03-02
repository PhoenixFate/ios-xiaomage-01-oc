//
//  Person.m
//  day08
//
//  Created by Phoenix Fate on 2020/3/1.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import "Person.h"

@implementation Person
- (void)sayWithContent:(NSString*)content{
    NSLog(@"%s, content: %@",__func__,content);
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"person, age=%d", _age];
}
@end
