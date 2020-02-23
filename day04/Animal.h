//
//  Animal.h
//  day04
//
//  Created by Phoenix Fate on 2020/2/23.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Animal : NSObject
/*
 如果给一个属性同时提供了getter/setter方法, 那么我们称这个属性为可读可写属性
 如果只提供了getter方法, 那么我们称这个属性为只读属性
 如果只提供了setter方法, 那么我们称这个属性为只写属性
 如果既没有提供getter也没有提供setter方法, 那么我们称这个属性为私有属性
 
 格式:
 @property(属性修饰符) 数据类型 变量名称;
 */
// readonly: 只读
// readwrite: 代表既生成getter方法 , 也生成setter方法
// 默认情况下 @property就是readwrite的
@property(readwrite) int age;
@property double height;


/*
 getter settter 属性修改生成的get set方法名
 - (void)tiZhong:(double)weight;
 @property(setter=tiZhong:) double weight;
 @property(getter=abc) double height;
 */

@property double weith;
@property NSString *name;


@property bool isMarried;
-(void)eat;
@end

NS_ASSUME_NONNULL_END
