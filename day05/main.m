//
//  main.m
//  day05
//
//  Created by Phoenix Fate on 2020/2/27.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Car.h"
#import "Room.h"

/*
 ARC: Automatic(自动) Reference(引用) Counting(计数)
 什么是自动引用计数?
 不需要程序员管理内容, 编译器会在适当的地方自动给我们添加release/retain等代码
 注意点: OC中的ARC和java中的垃圾回收机制不太一样, java中的垃圾回收是系统干得, 而OC中的ARC是编译器干得
 
 MRC: Manul(手动) Reference(引用) Counting(计数)
 什么是手动引用计数?
 所有对象的内容都需要我们手动管理, 需要程序员自己编写release/retain等代码
 
 
 内存管理的原则就是有加就有减
 也就是说, 一次alloc对应一次release, 一次retain对应一次relese
 */
int main(int argc, const char * argv[]) {
    //只有堆内存才需要管理
    
    @autoreleasepool {
        // insert code here...
        NSLog(@"--------------单个对象的内存管理-----------");
        
        // 只要创建一个对象默认引用计数器的值就是1
        Person *p=[[Person alloc]init];
        NSLog(@"retainCount = %lu", [p retainCount]); // 1
        
        [p retain];
        NSLog(@"retainCount = %lu", [p retainCount]); // 2
        
        
        // 通过指针变量p,给p指向的对象发送一条release消息
        // 只要对象接收到release消息, 引用计数器就会-1
        // 只要一个对象的引用计数器为0, 系统就会释放对象
        // 需要注意的是: release并不代表销毁\回收对象, 仅仅是计数器-1
        [p release];
        
        //retianCount 不准确
        NSLog(@"retainCount = %lu", [p retainCount]); // 1
        
        [p release];
        NSLog(@"----  ---");
        NSLog(@"--------------单个对象的内存管理-----------");
        
        
        NSLog(@"--------------空指针与野指针-----------");
        Person *p2=[[Person alloc] init];
        
        // 只要一个对象被释放了, 我们就称这个对象为 "僵尸对象"
        // 当一个指针指向一个僵尸对象, 我们就称这个指针为野指针
        // 只要给一个野指针发送消息就会报错
        [p2 release];
        
        
        // 空指针  nil  0
        // 为了避免给野指针发送消息会报错, 一般情况下, 当一个对象被释放后我们会将这个对象的指针设置为空指针
        // 因为在OC中给空指针发送消息是不会报错的
        p2=nil;
        [p2 release];
        [p2 release];
        [p2 release];
        NSLog(@"--------------空指针与野指针-----------");
        
        
        
        NSLog(@"--------------多对象的内存管理-----------");
        Person * p3=[[Person alloc]init];
        Room *r1=[[Room alloc]init];
        r1.no=888;
        
        // 将房间赋值给人
        // 人需要使用这间房, 只要人在房间就一定要在
        p3.room=r1;
        
        
        //换房
        Room *r2=[[Room alloc]init];
        r2.no=776;
        p3.room=r2;
        
        Car *c1=[[Car alloc]init];
        p3.car=c1;
        Car *c2=[[Car alloc]init];
        p3.car=c2;
        
        
        [r1 release];
        [r2 release];
        [c1 release];
        [c2 release];
        [p3 release];
        NSLog(@"--------------多对象的内存管理-----------");
    }
    
    
    NSLog(@"retainCount = %lu",[@"123" retainCount]);
    
    NSString *str1=[[NSString alloc]initWithString:@"bcd"];
    NSLog(@"retainCount = %lu",[str1 retainCount]);

    NSString *str2=[[NSString alloc]initWithFormat:@"bcddw"];
    NSLog(@"retainCount = %lu",[str2 retainCount]);
    
    NSString *str3=[NSString stringWithFormat:@"ddd"];
    NSLog(@"retainCount = %lu",[str3 retainCount]);
    
    return 0;
}
