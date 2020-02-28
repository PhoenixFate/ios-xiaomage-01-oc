//
//  Person+PersonExtension.h
//  day06-category
//
//  Created by Phoenix Fate on 2020/2/28.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <AppKit/AppKit.h>


#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

//匿名分类（类扩展 class extension）
//类拓展可以为类添加私有属性和私有方法
@interface Person ()
{
    int _age;
}
- void talk;

@end

NS_ASSUME_NONNULL_END
