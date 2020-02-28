//
//  Person+sports.m
//  day06-category
//
//  Created by Phoenix Fate on 2020/2/28.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import "Person+sports.h"

#import <AppKit/AppKit.h>


@implementation Person (sports)
- (void)playFootball{
    NSLog(@"person play football");
}

// 注意: 如果分类中有和原有类同名的方法, 会调用分类中的方法
// 也就是说会忽略原有类的方法
// 注意: 在开发中尽量不要这样写
//-(void)run{
//    NSLog(@"sports run");
//}
@end
