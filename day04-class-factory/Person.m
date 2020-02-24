//
//  Person.m
//  day04-class-factory
//
//  Created by Phoenix Fate on 2020/2/23.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import "Person.h"

@implementation Person
+ (instancetype)person{
    return [[self alloc] init];
}

+ (instancetype)personWithAge:(int)age{
    Person *person=[[self alloc] init];
    person.age=age;
    return person;
}
+ (void)test{
    NSLog(@"Person test");
}

// 只要程序启动就会将所有类的代码加载到内存中, 放到代码区
// load方法会在当前类被加载到内存的时候调用, 有且仅会调用一次
// 如果存在继承关系, 会先调用父类的load方法, 再调用子类的load方法
+ (void)load{
    NSLog(@"Person类被加载到内存中");
}

// 当当前类第一次被使用的时候就会调用(创建类对象的时候)
// initialize方法在整个程序的运行过程中只会被调用一次, 无论你使用多少次这个类都只会调用一次
// initialize用于对某一个类进行一次性的初始化
// initialize和load一样, 如果存在继承关系, 会先调用父类的initialize再调用子类的initialize
+ (void)initialize{
    NSLog(@"Person initialize");
}

- (void)demo{
    NSLog(@"person demo");
}

-(void)demoWithNumber:(NSString*)number{
    NSLog(@"person demo; number: %@",number);
}

- (void)demoWithNumber:(NSString *)number WithContent:(NSString *)content{
    NSLog(@"person demo; number: %@; content:%@;",number,content);
}
@end


