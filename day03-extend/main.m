//
//  main.m
//  day03-extend
//
//  Created by Phoenix Fate on 2020/2/22.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IPhone.h"
#import "AndroidPhone.h"
#import "Animal.h"
#import "Cat.h"
#import "Dog.h"
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    
    
    /*
     当前代码存在的问题: 重复代码太多
     
     可以利用继承来解决当前重复代码太多的问题
     只要A类继承了B类, 那么A类就拥有了B类的所有属性和方法(对象方法和类方法)
     */
    
    IPhone *iPhone=[IPhone new];
    [iPhone call:@"18751801512"];
    
    AndroidPhone *androidPhone=[AndroidPhone new];
    [androidPhone call:@"18751801512"];
    
    
    /*
     继承:
     当B类继承A类, 那么B类就拥有A类所有的属性和方法(类方法/对象方法)
     
     优点:
     提高代码的复用性
     可以让类与类之间产生关系, 正是因为继承让类与类之间产生了关系所以才有了多态
     
     注意:
     不要以为继承可以提高代码的复用性, 以后但凡发现多个类当中有重复代码就抽取一个父类
     只要满足一定的条件我们才能使用继承
     条件: XXXX 是 XXX   /    某某某 is a 某某某
     
     学生:
     姓名
     年龄
     数学成绩
     语文成绩
     英语成绩
     
     排行榜:
     数学成绩
     语文成绩
     英语成绩
     
     分数类:
     数学成绩
     语文成绩
     英语成绩
     
     缺点:
     耦合性太强(依赖性太强)
     
     */
    
    
    [iPhone camera];
    [IPhone camera];
    [iPhone camera];
    [AndroidPhone camera];
    
    
    
    //多态
    
    /*
     // 多态: 事物的多种表现形态
     // 动态类型: 在编译的时候编译器只会检查当前类型对应的类中有没有需要调用的方法
     //          在运行时,系统会自动判断a1的真实类型
     Animal *a1 = [Dog new];
     [a1 eat];
     
     // 注意点: 在多态中, 如果想调用子类特有的方法必须强制类型转换为子类才能调用
     //    [a1 kanJia];
     Dog *d1 = (Dog *)a1;
     [d1 kanJia];
     */
    Animal *cat=[Cat new];
    Animal *dog=[Dog new];
    [cat eat];
    [dog eat];
    
    Dog *dog2=(Dog*)dog;
    [dog2 gard];
    
    Person *person= [Person new];
    person->_name=@"abc";
    
    [person animalEat:cat];
    [person animalEat:dog];

    // 只要利用%@打印某个对象, 系统内部默认就会调用父类的description方法
    // 调用该方法, 该方法会返回一个字符串, 字符串的默认格式 <类的名称: 对象的地址>
    NSLog(@"person description: %@",person);
    
    
    // class注意c是小写, 只要给类发送class消息, 就会返回当前类的类对象
    // 1.获取Person对应的类对象
    Class c = [Person class];
    // 2.打印Person的类对象
    NSLog(@"当前对象对应的类 = %@", c);
    return 0;
}
