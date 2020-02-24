//
//  main.m
//  day04-class-factory
//
//  Created by Phoenix Fate on 2020/2/23.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    
    
    
    NSLog(@"-----------------自定义类工厂方法--------------");
    /*
     自定义类工厂方法是苹果的一个规范, 一般情况下, 我们会给一个类提供自定义构造方法和自定义类工厂方法用于创建一个对象
     */
    Person *person=[Person person];
    person.age=30;
    Person *person2=[Person personWithAge:10];
    NSLog(@"age: %d",person2.age);
    
    //        NSString *str=[NSString stringWithString:@"abc"];
    //    NSLog(@"%@",str);
    //    NSString *str2=[[NSString alloc]initWithString:@"bcd"];
    //    NSLog(@"%@",str2);
    
    
    //    Student *student=[Student person];
    Student *student=[Student new];
    student.no=20;
    NSLog(@"no: %d",student.no);
    
    NSLog(@"-----------------自定义类工厂方法--------------");
    
    NSLog(@"-----------------类的本质--------------");
    
    /*
     类的本质:
     类其实也是一个对象, 这个对象会在这个类第一次被使用的时候创建
     只要有了类对象, 将来就可以通过类对象来创建实例对象
     实例对象中有一个isa指针, 指向创建自己的类对象
     
     类对象中保存了当前对象所有的对象方法
     当给一个实例对象发送消息的时候, 会根据实例对象中的isa指针去对应的类对象中查找
     */
    // 1.如何获取类对象
    // [实例对象 class];  [类名 class];
    Person *p1 = [[Person alloc] init];
    Person *p2 = [[Person alloc] init];
    // 一个类再内存中只有一份类对象
    Class c1 = [p1 class];
    Class c2 = [p2 class];
    Class c3 = [Person class];
    NSLog(@"c1 = %p, c2 = %p, c3 = %p", c1, c2, c3);
    
    
    // 2.类对象的应用场景
    // 2.1用于创建实例对象
    Person *p3 = [[c1 alloc] init];
    p3.age = 30;
    NSLog(@"%i", p3.age);
    // 2.2用于调用类方法
    //[Person test];
    [c1 test];
    
    
    NSLog(@"-----------------类的本质--------------");
    
    
    
    
    NSLog(@"-----------------SEL--------------");
    // 1.SEL类型的第一个作用, 配合对象/类来检查对象/类中有没有实现某一个方法
    SEL sel=@selector(setAge:);
    Person *p8 = [Person new];
    // 判断p对象中有没有实现-号开头的setAge:方法
    // 如果P对象实现了setAge:方法那么就会返回YES
    // 如果P对象没有实现setAge:方法那么就会返回NO
    BOOL flag = [p8 respondsToSelector:sel];
    NSLog(@"- function: flag = %i", flag);
    // respondsToSelector注意点: 如果是通过一个对象来调用该方法那么会判断该对象有没有实现-号开头的方法
    // 如果是通过类来调用该方法, 那么会判断该类有没有实现+号开头的方法
    SEL sel1 = @selector(test);
    flag = [Person respondsToSelector:sel1];
    
    NSLog(@"+ function: flag = %i", flag);
    
    
    
    // 2.SEL类型的第二个作用, 配合对象/类来调用某一个SEL方法
    SEL sel3 = @selector(demo);
    Person *p9 = [Person new];
    // 调用p对象中sel类型对应的方法
    [p9 performSelector:sel3];
    // <==>
    [p9 demo];
    
    SEL sel4=@selector(demoWithNumber:);
    [p9 performSelector:sel4 withObject:@"123456"];
    
    // 注意:performSelector最多只能传递2个参数
    SEL sel5=@selector(demoWithNumber:WithContent:);
    [p9 performSelector:sel5 withObject:@"10086" withObject:@"hello 10086"];
    
    NSLog(@"-----------------SEL--------------");
    
    
    
    
    return 0;
    
}
