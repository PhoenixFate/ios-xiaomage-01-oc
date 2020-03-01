//
//  SportProtocol.h
//  day07
//
//  Created by Phoenix Fate on 2020/2/29.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol SportProtocol <NSObject>
// 1.协议只能声明方法, 不能声明属性
//{
//    int  _age;
//}
// 注意:@required和@optional仅仅使用程序员之间交流, 并不能严格的控制某一个遵守该协议的类必须要实现该方法, 因为即便不是实现也不会报错, 只会报一个警告


//协议方法声明
// 注意: 如果没有使用任何关键字修饰协议中的方法, 那么该方法默认就是required的
@required
-(void)playFootball;
-(void)playBasketball;
@optional // 可选
// 如果协议中的方法是@optional的, 而遵守协议的类又没有实现该方法, 那么不会报警告
-(void)playBaseball;
@end

NS_ASSUME_NONNULL_END
