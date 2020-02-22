//
//  main.m
//  day03
//
//  Created by Phoenix Fate on 2020/2/22.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Gun.h"
#import "Person.h"
#import "IPhone.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    Gun *gun=[Gun new];
    [gun setBullet:5];
    [gun shoot];
    
    NSLog(@"剩余子弹数量 ： %i",[gun bullet]);
    NSLog(@"剩余子弹数量 ： %i",gun.bullet);
    
    Person3 *person=[Person3 new];
    [person setAge:18];
    [person setName:@"李小猫"];
    [person setHeight:1.75];
    [person setWeight:64];
    NSLog(@"person age:%i; name:%@; height:%.2f; weight:%.2f",[person age],[person name],[person height],[person weight]);
    
    
    
    // 如果给属性提供了getter和setter方法, 那么访问属性就又多了一种访问方式 , 点语法
    // 点语法其实它的本质是调用了我们的setter和getter方法
    // 点语法是一个编译器的特性, 会在程序翻译成二进制的时候将.语法自动转换为setter和getter方法
    // 如果点语法在=号的左边, 那么编译器会自动转换为setter方法
    // 如果点语法在=号的右边, 或者没有等号, 那么编译器就会自动转换为getter方法
    person.age=20;
    person.name=@"夏大猫";
    person.height=1.6;
    person.weight=49;
    NSLog(@"person age:%i; name:%@; height:%.2f; weight:%.2f",person.age,person.name,person.height,person.weight);
    
    /*
      点语法的注意点:
      点语法一般用于给成员变量赋值, 如果不是给成员变量赋值一般情况下不建议使用, 但是也可以使用
      */
     //person.test; // [p test];
    
    
    
    
    
    
    
    
    //self
    //self 既可以指向类对象，又可以指向实例对象
    /*
    如果self在对象方法中, 那么self就代表调用当前对象方法的那个对象
    如果self在类方法中, 那么self就代表调用当前类方法的那个类
    总结:
    我们只用关注self在哪一个方法中 , 如果在类方法那么就代表当前类, 如果在对象方法那么就代表"当前调用该方法的对象"
    */
    [IPhone carameWithFlahlightStatus:kFlahlightStatusClose];
    
    
    return 0;
}
