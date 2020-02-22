//
//  IPhone.m
//  day03-extend
//
//  Created by Phoenix Fate on 2020/2/22.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import "IPhone.h"

@implementation IPhone
- (void)camera{
    
    
    // 如果父类中 有两个方法 + camera  -camear
    // 会根据本身这个方法的+ - 调用对应的父类方法
    [super camera];
    NSLog(@"iphone camera");
}
+(void)camera{
    [super camera];
    NSLog(@"+ iphone camera");
}
@end
