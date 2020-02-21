//
//  Person.h
//  ios-xiaomage-01-oc
//
//  Created by Phoenix Fate on 2020/2/21.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#ifndef Person_h
#define Person_h
@interface Person: NSObject
{
    // 写在类声明的大括号中的变量, 我们称之为 成员变量(属性, 实例变量)
    // 成员变量只能通过对象来访问
    // 注意: 成员变量不能离开类, 离开类之后就不是成员变量 \
            成员变量不能在定义的同时进行初始化
    // 存储: 堆(当前对象对应的堆的存储空间中)
    // 存储在堆中的数据, 不会被自动释放, 只能程序员手动释放
    @public
    //属性
    int age;
    double height;
    double weight;
}
-(void)eat:(NSString*)food;
-(void)sleep;
-(void)walk;

@end
#endif /* Person_h */
