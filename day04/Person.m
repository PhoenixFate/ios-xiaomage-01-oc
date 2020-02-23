//
//  Person.m
//  day04
//
//  Created by Phoenix Fate on 2020/2/23.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import "Person.h"

@implementation Person
{
    // 实例变量(成员变量)既可以在@interface中定义, 也可以在@implementation中定义
    // 写在@implementation中的成员变量, 默认就是私有的成员变量, 并且和利用@private修饰的不太一样, 在@implementation中定义的成员变量在其它类中无法查看, 也无法访问
    // 在@implementation中定义的私有变量只能在本类中访问
    double _score;
}
- (void) test{
    NSLog(@"score: %f",_score);
}

// 如果重写了setter方法, 那么property就只会生成getter方法
// 如果重写了getter方法, 那么property就只会生成setter方法
// 如果同时重写了getter/setter方法, 那么property就不会自动帮我们生成私有的成员变量
-(void)setAge:(int)age{
    _age=age;
}
- (int)age{
    return _age;
}
/**
 Xcode4时，@property只能生成getter、setter方法的声明；
 从Xcode5开始，@property 可以自动生成_propertyName成员变量和getter、setter方法的声明和实现。
 */
//@synthesize 很老了 基本不用
@synthesize height = _weight;

- (void)test:(int)a {
    NSLog(@"test int");
}




//构造，重写init方法
// 重写init方法, 在init方法中初始化成员变量
// 注意: 重写init方法必须按照苹果规定的格式重写, 如果不按照规定会引发一些未知的错误
// 1.必须先初始化父类, 再初始化子类
// 2.必须判断父类是否初始化成功, 只有父类初始化成功才能继续初始化子类
// 3.返回当前对象的地址
- (instancetype)init
{
    self = [super init];
    if (self) {
        _age=5;
    }
    return self;
}




// instancetype == id == 万能指针 == 指向一个对象
// id在编译的时候不能判断对象的真实类型
// instancetype在编译的时候可以判断对象的真实类型

// id和instancetype除了一个在编译时不知道真实类型, 一个在编译时知道真实类型以外, 还有一个区别
// id可以用来定义变量, 可以作为返回值, 可以作为形参
// instancetype只能用于作为返回值

// 注意: 以后但凡自定义构造方法, 返回值尽量使用instancetype, 不要使用id
- (instancetype)initWithName:(NSString*)name
{
    self = [super init];
    if (self) {
        _name=name;
        _age=5;
    }
    return self;
}


- (instancetype)initWithAge:(int)age
{
    self = [super init];
    if (self) {
        _age=age;
    }
    return self;
}

- (instancetype)initWithAge:(int)age WithName :(NSString*)name
{
    self = [super init];
    if (self) {
        _age=age;
        _name=name;
    }
    return self;
}



//- (NSString *)description
//{
//    return [NSString stringWithFormat:@"age: %d; name: %@", _age,_name];
//}
@end
