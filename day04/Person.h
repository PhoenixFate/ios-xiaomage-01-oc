//
//  Person.h
//  day04
//
//  Created by Phoenix Fate on 2020/2/23.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
{
    @public
    int _age;
    
    //如果利用@property来生成getter/setter方法, 那么我们可以不写成员变量, 系统会自动给我们生成一个_开头的成员变量
    //注意: @property自动帮我们生成的成员变量是一个私有的成员变量, 也就是说是在.m文件中生成的, 而不是在.h文件中生成的
    double _height;
    double _weight;
    
    
    
    @private
    NSString *_name;
    
    NSString *_country;

    
//    property关键字
}

// 如果只有方法的实现, 没有方法的声明, 那么该方法就是私有方法
// 在OC中没有真正的私有方法, 因为OC是消息机制
//- (void)test;

/*
setter:
作用: 用于给成员变量赋值
1.一定是对象方法
2.一定没有返回值
3.方法名称以set开头, 后面跟上需要赋值的成员变量名称, 并且去掉下划线, 然后首字母大写
4.一定有参数, 参数类型和需要赋值的成员变量一直, 参数名称就是需要赋值的成员变量名称去掉下划线
*/
-(void)setAge:(int)age;
/*
getter:
作用: 用于获取成员变量的值
1.一定是对象方法
2.一定有返回值, 返回值类型和需要获取的成员变量的类型一致
3.方法名称就是需要获取的成员变量的名称去掉下划线
4.一定没有参数
*/
-(int)age;





/*
 从Xcode4.4以后apple对@property进行了一个增强, 以后只要利用一个@property就可以同时生成setter/getter方法的声明和实现
 没有告诉@property要将传入的参数赋值给谁, 默认@property会将传入的属性赋值给_开头的成员变量
 
 @property有一个弊端: 它只会生成最简单的getter/setter方法的声明和实现, 并不会对传入的数据进行过滤
 如果想对传入的数据进行过滤, 那么我们就必须重写getter/setter方法
 如果不想对传入的数据进行过滤, 仅仅是提供一个方法给外界操作成员变量, 那么就可以使用@property
 
 如果利用@property来生成getter/setter方法, 那么我们可以不写成员变量, 系统会自动给我们生成一个_开头的成员变量
 注意: @property自动帮我们生成的成员变量是一个私有的成员变量, 也就是说是在.m文件中生成的, 而不是在.h文件中生成的
 */

/*
@porperty是一个编译器指令
 在Xocde4.4之前, 可以使用@porperty来代替getter/setter方法的声明
 也就是说我们只需要写上@porperty就不用写getter/setter方法的声明
 
 编译器只要看到@property, 就知道我们要生成某一个属性的getter/setter方法的声明
 
 - (void)setAge:(int)age;
 - (int)age;
 */
@property double height;


@property NSString*name;

- (instancetype)initWithName:(NSString*)name;
- (instancetype)initWithAge:(int)age;
- (instancetype)initWithAge:(int)age WithName :(NSString*)name;
- (void)test:(int)a;
//Duplicate declaration of method 'test:'
//- (void)test:(NSString*)s;
@end

NS_ASSUME_NONNULL_END
