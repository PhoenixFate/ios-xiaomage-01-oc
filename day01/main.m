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
#import "firstClass.h"
/*
 #import 和#include一样
 import会自动防止重复导入
 ipmort里面的头文件 不需要写：
 #ifndef    XXX_STDIO_H_
 #define    XXX_STDIO_H_
 */
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
    
    NSLog(@"size =%f, color=%@, model=%@, cpu=%i",iPhone->_size,iPhone->_color,iPhone->_model,iPhone->_cpu);
    
    // 如果给对象发消息(如果调用对象的方法)
    [iPhone getInfo];
    [IPhone test];
    [iPhone call:(@"10086")];
    [iPhone call:@"10005"];
    [iPhone sendMessage:@"10086" andContent:@"我想你了"];
    return 0;
}
