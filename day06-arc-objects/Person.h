//
//  Person.h
//  day06-arc-objects
//
//  Created by Phoenix Fate on 2020/2/28.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Dog;
NS_ASSUME_NONNULL_BEGIN
// MRC, A对象想拥有B对象, 需要对B对象进行一次retain
//      A对象不用B对象了, 需要对B对象进行一次release
//      property的时候进行retain, dealloc的时候进行release


// ARC, A对象想拥有B对象, 那么就需要用一个强指针指向B对象
//      A对象不用B对象了, 什么都不需要做, 编译器会自动帮我们做

@interface Person : NSObject
/*
 iOS @property 默认属性
 数据类型
 atomic assign readwrite
 对象类型
 atomic strong readwrite
 */
@property(nonatomic,strong,nullable) Dog *dog;
@property int age;
@end

NS_ASSUME_NONNULL_END
