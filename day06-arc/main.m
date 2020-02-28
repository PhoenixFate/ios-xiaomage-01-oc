//
//  main.m
//  day06-arc
//
//  Created by Phoenix Fate on 2020/2/28.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        Person *p=[[Person alloc]init];
        p.age=100;
    }
    NSLog(@"-----------------");
    
    {
        // ARC的判断准则: 只要没有强指针指向对象, 对象就会释放
        // 默认情况下所有的指针都是强指针
        // __strong
        __strong Person *p=[[Person alloc]init];
        p.age=120;
        NSLog(@"---------begin nil--------");
        p=nil;
        NSLog(@"---------end nil--------");
        
        // 在开发中, 千万不要使用一个弱指针保存一个刚刚创建的对象
         // 立即释放
        //__weak Person *p2=[[Person alloc]init];
        __weak Person *p2=p;
        p2.age=11;
        NSLog(@"---------begin2 nil--------");
        p2=nil;
        NSLog(@"---------end2 nil--------");
    }
    NSLog(@"---------2--------");
    
    return 0;
}
