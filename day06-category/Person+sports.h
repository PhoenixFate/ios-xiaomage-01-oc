//
//  Person+sports.h
//  day06-category
//
//  Created by Phoenix Fate on 2020/2/28.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <AppKit/AppKit.h>


#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

// 1.分类是用于给原有类添加方法的, 它只能添加方法, 不能添加属性(成员变量)
@interface Person (sports)

-(void)playFootball;

// 2.分类中的@property, 只会生成setter/getter方法的声明, 不会生成实现以及私有的成员变量
//@property (nonatomic, assign) double height;


/*
方法的调用顺序:
1.分类
2.本类
3.父类
*/
@end

NS_ASSUME_NONNULL_END
