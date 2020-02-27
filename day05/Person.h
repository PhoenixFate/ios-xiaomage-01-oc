//
//  Person.h
//  day05
//
//  Created by Phoenix Fate on 2020/2/27.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Room.h"
//#import "Car.h"
// 由于import是一个预编译指令, 他会将""中的文件拷贝到import所在的位置
// 并且import有一个特点, 只要""中的文件发生了变化, 那么import就会重新拷贝一次(更新操作)
// @class仅仅是告诉编译器, @class后面的名称是一个类, 不会做任何拷贝操作
// 注意: 由于@class仅仅是告诉编译器后面的名称是一个类, 所以编译器并不知道这个类中有哪些属性和方法, 所以在.m中使用这个类时需要import这个类, 才能使用

/*
 总结:
 1.如果都在.h中import, 假如A拷贝了B, B拷贝了C ,  如果C被修改了, 那么B和A都需要重新拷贝. 因为C修改了那么B就会重新拷贝, 而B重新拷贝之后相当于B也被修改了, 那么A也需要重新拷贝. 也就是说如果都在.h中拷贝, 只要有间接关系都会重新拷贝
 2.如果在.h中用@class, 在.m中用import, 那么如果一个文件发生了变化, 只有和这个文件有直接关系的那个文件才会重新拷贝
 3.所以在.h中用@class可以提升编译效率
 
 */
@class Car;
@class Room;

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
{
    Room *_room;
}
-(void)setRoom:(Room*)room;
-(Room*)room;
@property(retain)Car *car;
// 1.相同类型的property修饰符不能同时使用
// 2.不同类型的property修饰符可以多个结合在一起使用, 多个之间用,号隔开
// 3.iOS开发中只要写上property, 那么就立刻写上nonatomic
/*
 readonly: 只会生成getter方法
 readwrite: 既会生成getter也会生成setter, 默认什么都不写就是readwrite
 getter: 可以给生成的getter方法起一个名称
 setter: 可以给生成的setter方法起一个名称
 retain: 就会自动帮我们生成getter/setter方法内存管理的代码
 assign: 不会帮我们生成set方法内存管理的代码, 仅仅只会生成普通的getter/setter方法, 默认assign
 多线程
 atomic ：性能低（默认）
 nonatomic ：性能高
 在iOS开发中99.99%都是写nonatomic
*/
@property(nonatomic,assign) int age;
@end

NS_ASSUME_NONNULL_END
