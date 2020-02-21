//
//  main.m
//  day01
//
//  Created by Phoenix Fate on 2020/2/20.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

// Foundation.h我们称之为主头文件, 主头文件中又拷贝了该工具箱中所有工具的头文件, 我们只需要导入主头文件就可以使用该工具箱中所有的工具, 避免了每次使用都要导入一个对应的头文件
// 工具箱的地址: /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/System/Library/Frameworks
// 规律: 所有的主头文件的名称都和工具箱的名称一致
//      所有的主头文件都是导入了该工具箱中所有工具的头文件

#import <Foundation/Foundation.h>
#include <stdio.h>

//#import 既可以导入oc的头文件 又可以导入c的头文件
#import "test.h"
#import "FirstClass.h"
#import "Person.h"
/*
 #import 和#include一样
 import会自动防止重复导入
 ipmort里面的头文件 不需要写：
 #ifndef    XXX_STDIO_H_
 #define    XXX_STDIO_H_
 */


// 写在函数和大括号外部的变量, 我们称之为全局变量
// 作用域: 从定义的那一行开始, 一直到文件末尾
// 局部变量可以先定义在初始化, 也可以定义的同时初始化
// 存储: 静态区
// 程序一启动就会分配存储空间, 直到程序结束才会释放
int a;
int b = 10;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    
    /*
     printf NSLog 区别：
     1.NSLog 自动换行
     2.自动添加时间 系统信息
     3.接受的参数不一样
     */
    printf("day01 first oc app\n");
    NSLog(@"day01 nslog");
    NSLog(@"%d",20);
    
    // 如何通过一个类来创建对象
    // 在OC中想要通过一个类来创建一个对象, 必须给类发送一个消息(好比C语言中调用函数一样)
    // 如何发送消息?   在OC中只要想要发送消息就先写上 [类名称/对象名称 方法名称];
    // 发送什么消息(调用什么方法)可以创建一个对象呢? new
    
    /*
     只要通过一个类调用类的new方法, 也就是给类发送一个叫做new的消息之后
     系统内部就会做3件事情
     1. 为Iphone类创建出来得对象分配存储空间
     2. 初始化Iphone类创建出来的对象中的属性
     3. 返回Iphone类创建出来的对象对应的地址
     */
    
    // 通过一个Iphone类型的指针接收了 Iphone对象的地址
    // 如果使用给一个指针保存了某一个对象的地址, 那么我们就称这个指针位之为某个类型的对象
    // 利用Iphone类型的指针保存了Iphone对象的地址, 那么我们就称Iphone类型的指针p之为Iphone对象
    IPhone *iPhone=[IPhone new];
    // OC中的类其实本质就是一个结构体, 所以p这个指针其实就是指向了一个结构体
    iPhone->_color=@"白色";
    iPhone->_cpu=5;
    iPhone->_size=6.2;
    iPhone->_model=@"iphone 6中文";
    iPhone->color1=BlackColor;
    
    NSLog(@"size =%f, color=%@, model=%@, cpu=%i, newColor=%u",iPhone->_size,iPhone->_color,iPhone->_model,iPhone->_cpu,iPhone->color1);
    
    // 如果给对象发消息(如果调用对象的方法)
    [iPhone getInfo];
    [IPhone test];
    [iPhone call:(@"10086")];
    [iPhone call:@"10005"];
    [iPhone sendMessage:@"10086" andContent:@"我想你了"];
    
    
    int sum=[IPhone sumWithValue1:20 andValue2:50];
    NSLog(@"sum is %d",sum);
    
    
    
    
    
    // 1.通过类创建对象
    /*
     1.开辟存储空间, 通过new方法创建对象会在堆 内存中开辟一块存储空间
     2.初始化所有属性
     3.返回指针地址
     
     创建对象的时候返回的地址其实就是类的第0个属性的地址
     但是需要注意的是: 类的第0个属性并不是我们编写的_age, 而是一个叫做isa的属性
     isa是一个指针, 占8个字节
     
     其实类也是一个对象, 也就意味着Person也是一个对象
     平时我们所说的创建对象其实就是通过一个 类对象 来创建一个 新的对象
     类对象是系统自动帮我们创建的, 里面保存了当前对象的所有方法
     而实例对象是程序自己手动通过new来创建的, 而实例对象中有一个isa指针就指向了创建它的那个类对象
     
     */
    
    Person *p=[Person new];
    [p walk];
    [p sleep];
    [p eat:@"汉堡包"];
    
    
    
    /*
     常见错误
     1.只有类的声明，没有类的实现
     2.漏了@end
     3. @interface和@implementation嵌套
     4.成员变量没有写在括号里面
     5.方法的声明写在了大括号里面
     6.成员变量不能在{}中进行初始化、不能被直接拿出去访问
     7.方法不能当做函数一样调用
     8.OC方法只能声明在@interface和@end之间，只能实现在@implementation和@end之间。也就是说OC方法不能独立于类存在
     9.C函数不属于类，跟类没有联系，C函数只归定义函数的文件所有
     10.C函数不能访问OC对象的成员
     11.低级错误：方法有声明，但是实现的时候写成了函数
     12.OC可以没有@interface同样可以定义一个类
     */
    
    
    return 0;
}
