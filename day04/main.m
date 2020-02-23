//
//  main.m
//  day04
//
//  Created by Phoenix Fate on 2020/2/22.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Animal.h"
#import "Cat.h"
#import "Student.h"

typedef int *one;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    
    Person *person=[Person new];
    person->_age=20;
    //    person->_score=30;
    //    [person test];
    
    id pp=[Person new];
    [pp test];
    [person performSelector:@selector(test)];
    
    person.height=1.75;
    NSLog(@"height: %.2f",person.height);
    
    [person setHeight:1.85];
    NSLog(@"height: %.2f",[person height]);
    
    NSLog(@"height: %.2f; weight: %.2f;",person->_height,person->_weight);
    
    
    Animal *animal=[Animal new];
    animal.age=20;
    animal.height=0.45;
    animal.weith=23.3;
    animal.name=@"荷兰猪";
    animal.isMarried=true;
    NSLog(@"is married:%d",animal.isMarried);
    
    
    
    
    
    
    
    
    
    
    /*
     id是一个数据类型, 并且是一个动态数据类型
     既然是数据类型, 所以就可以用来
     1.定义变量
     2.作为函数的参数
     3.作为函数的返回值
     
     默认情况下所有的数据类型都是静态数据类型
     静态数据类型的特点:
     在编译时就知道变量的类型,
     知道变量中有哪些属性和方法
     在编译的时候就可以访问这些属性和方法,
     并且如果是通过静态数据类型定义变量, 如果访问了不属于静态数据类型的属性和方法, 那么编译器就会报错
     
     动态数据类型的特点:
     在编译的时候编译器并不知道变量的真实类型, 只有在运行的时候才知道它的真实类型
     并且如果通过动态数据类型定义变量, 如果访问了不属于动态数据类型的属性和方法, 编译器不会报错
     
     id == NSObject * 万能指针
     id和NSObject *的区别:
     NSObject *是一个静态数据类型
     id  是一个动态数据类型
     */
    
    //id==NSObject*
    /*
     id == NSObject * 万能指针
     id和NSObject *的区别:
     NSObject *是一个静态数据类型
     id  是一个动态数据类型
     */
    // 通过静态数据类型定义变量, 不能调用子类特有的方法
    // 通过动态数据类型定义变量, 可以调用子类特有的方法
    // 通过动态数据类型定义的变量, 可以调用私有方法
    // 弊端: 由于动态数据类型可以调用任意方法, 所以有可能调用到不属于自己的方法, 而编译时又不会报错, 所以可能导致运行时的错误
    // 应用场景: 多态, 可以减少代码量, 避免调用子类特有的方法需要强制类型转换
    id cat=[Cat new];
    [cat catchMouse];
    
    int a=10;
    one b=&a;
    printf("%d\n",*b);
    
    // 为了避免动态数据类型引发的运行时的错误, 一般情况下如果使用动态数据类型定义一个变量, 在调用这个对象的方法之前会进行一次判断, 判断当前对象是否能够调用这个方法
    
    id cat2=[Cat new];
    //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    if([cat2 isKindOfClass:[Animal class]]){
        // isKindOfClass , 判断指定的对象是否是某一个类, 或者是某一个类的子类
        NSLog(@"isKindOfClass");
        [cat2 eat];
    }
    
    if([cat2 isMemberOfClass:[Cat class]]){
        // isKindOfClass , 判断指定的对象是否是某一个类, 或者是某一个类的子类
        NSLog(@"isMemeberOfClass");
        [cat2 eat];
    }
    
    
    
    
    //new 的原理
    NSLog(@"-------------------new 原理--------------");
    /*
     new做了三件事情
     1.开辟存储空间  + alloc 方法
     2.初始化所有的属性(成员变量) - init 方法
     3.返回对象的地址
     */
    //    Person *p = [Person new];
    // alloc做了什么事情: 1.开辟存储空间 2.将所有的属性设置为0 3.返回当前实例对象的地址
    Person *p1 = [Person alloc];
    // 1.初始化成员变量, 但是默认情况下init的实现是什么都没有做 2.返回初始化后的实例对象地址
    Person *p2 =  [p1 init];
    // [[Person alloc] init];
    
    // 注意: alloc返回的地址, 和init返回的地址是同一个地址
    NSLog(@"p1 = %p, p2 = %p", p1, p2);
    
    // [[Person alloc] init]; == [Person new];
    // 建议大家以后创建一个对象都使用 alloc init, 这样可以统一编码格式
    Person *p3 = [[Person alloc] init];
    NSLog(@"这样逼格高: [[Person alloc] init] --%@",p3);
    
    NSLog(@"-------------------new 原理--------------");
    
    
    
    NSLog(@"-------------------构造--------------");
    /*
     在OC中init开头的方法, 我们称之为构造方法
     构造方法的用途: 用于初始化一个对象, 让某个对象一创建出来就拥有某些属性和值
     */
    Person*p5=[[Person alloc] init];
    NSLog(@"age: %d",p5.age);
    
    Person*p6=[[Person alloc] initWithName:(@"王大陆")];
    NSLog(@"age: %d; name:%@",p6.age,p6.name);
    
    
    NSLog(@"-------------------构造--------------");
    
    
    
    NSLog(@"-----------------构造 在继承中的表现--------------");
    Student *student1=[[Student alloc]initWithAge:(6) WithName:@"李晓明" WithNo:@"123123"];
    NSLog(@"student: %@ ",student1);
    NSLog(@"-----------------构造 在继承中的表现--------------");
    
    

    
    
    return 0;
}
