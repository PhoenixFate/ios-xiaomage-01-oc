//
//  Person.m
//  day01
//
//  Created by Phoenix Fate on 2020/2/21.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@implementation Person

-(void)eat:(NSString*)food{
    NSLog(@"吃了 %@ 很满足",food);
    self->weight+=0.2;
}
-(void)sleep{
    NSLog(@"开始睡觉");
}
-(void)walk{
    NSLog(@"开始散步");
}

@end
