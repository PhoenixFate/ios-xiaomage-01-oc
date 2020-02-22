//
//  Person.m
//  day03-extend
//
//  Created by Phoenix Fate on 2020/2/22.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import "Person.h"

@implementation Person
- (void)animalEat:(Animal *)animal{
    NSLog(@"人 喂养");
    [animal eat];
}
- (NSString *)description
{
    
    /*
     访问属性有三种方式
     p->_age;
     [p age];
     p.age;
     
     self写在对象方法中就代表当前调用该方法的对象
     self.age; // [self age];
     self->age;
     [self age];
     */
    /*
     //    return @"xxoo";
     NSString *str = [NSString stringWithFormat:@"age = %i, name = %@, height = %f, weight = %f, tel = %@, email = %@", _age, _name, _height, _weight, _tel, _email];
     return str;
     */
    // 建议: 在description方法中尽量不要使用self来获取成员变量\
    因为如果你经常在description方法中使用self, 可能已不小心就写成了 %@, self
    // 如果在description方法中利用%@输出self会造成死循环
    // self == person实例对象
    return [NSString stringWithFormat:@"- person name: %@", _name];
}

+ (NSString*)description
{
    return [NSString stringWithFormat:@"+ person description"];
}
@end
