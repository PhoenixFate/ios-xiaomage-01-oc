//
//  Person.h
//  day03-extend
//
//  Created by Phoenix Fate on 2020/2/22.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Animal.h"
NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
{
    /*
     @public 就是实例变量修饰符
     
     @public
     >可以在其它类中访问被public修饰的成员变量
     >也可以在本类中访问被public修饰的成员变量
     >可以在子类中访问父类中被public修饰的成员变量
     
     @private
     >不可以在其它类中访问被private修饰的成员变量
     >可以在本类中访问被private修饰的成员变量
     >不可以在子类中访问父类中被private修饰的成员变量
     
     @protected
     >不可以在其它类中访问被protected修饰的成员变量
     >可以在本类中访问被protected修饰的成员变量
     >可以在子类中访问父类中被protected修饰的成员变量
     
     注意: 默认情况下所有的实例变量都是protected
     
     @package
     >介于public和private之间的
     如果是在其它包中访问那么就是private的
     如果是在当前代码所在的包种访问就是public的
     
     
     实例变量修饰符作用域: 从出现的位置开始, 一直到下一个修饰符出现
     如果没有遇到下一个实例变量修饰符, 那么就会修饰后面所有的实例变量
    */
    
    @public
    int _age;
    
    @private
    double _height;
    
    @protected
    double _weight;
    
     @package
    NSString *_name;
    NSString *_tel;
    NSString *_email;
}



-(void)animalEat:(Animal*)animal;

//toString 方法
-(NSString *) description;
+(NSString *) description;
@end
NS_ASSUME_NONNULL_END
