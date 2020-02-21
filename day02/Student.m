//
//  Student.m
//  day02
//
//  Created by Phoenix Fate on 2020/2/21.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

#pragma mark -
#pragma mark 士兵类实现
@implementation Student

-(void)showInfo{
    NSLog(@"我的名字是: %@, 我的生日是：%d-%d-%d",self->name,self->birthday.year,self->birthday.month,self->birthday.day);
}

@end
