//
//  Student.m
//  day04-class-factory
//
//  Created by Phoenix Fate on 2020/2/23.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import "Student.h"

@implementation Student

+ (void)initialize{
    NSLog(@"Student initialize");
}
+ (void)load{
    NSLog(@"Student类被加载到内存中");
}
@end
