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
    
    
    Student *student=[Student person];
    student.no=20;
    NSLog(@"no: %d",student.no);
    
    NSLog(@"-----------------自定义类工厂方法--------------");
    
    
    
    return 0;
    
}
