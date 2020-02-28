//
//  Dog.m
//  day06-arc-objects
//
//  Created by Phoenix Fate on 2020/2/28.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import "Dog.h"

@implementation Dog
- (void)dealloc
{
    NSLog(@"%s; dog name=%@",__func__,_name);
}
@end
