//
//  Dog.h
//  day06-arc-objects
//
//  Created by Phoenix Fate on 2020/2/28.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;
NS_ASSUME_NONNULL_BEGIN

@interface Dog : NSObject
/*
iOS @property 默认属性
数据类型
atomic assign readwrite
对象类型
atomic strong readwrite
*/
@property(nonatomic)NSString*name;



//@property(nonatomic, strong)Person *owner;
//@property(nonatomic, assign)Person *owner;
// 在ARC中如果保存对象不要用assign, 用weak
// assign是专门用于保存基本数据类型的, 如果保存对象用weak
@property(nonatomic,weak)Person*owner;
@end

NS_ASSUME_NONNULL_END
