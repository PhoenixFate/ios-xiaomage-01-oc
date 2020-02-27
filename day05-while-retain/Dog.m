//
//  Dog.m
//  day05-while-retain
//
//  Created by Phoenix Fate on 2020/2/27.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import "Dog.h"

@implementation Dog
- (void)dealloc
{
    NSLog(@"%s",__func__);
//    [_person release];
    [super dealloc];
}
@end
