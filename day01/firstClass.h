//
//  firstClass.h
//  ios-xiaomage-01-oc
//
//  Created by Phoenix Fate on 2020/2/20.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#ifndef firstClass_h
#define firstClass_h

// 1.如何编写类的声明
// 以@interface开头 , 以@end结尾, 然后再class name对应的地方写上 事物名称, 也就是类名即可
// 注意: 类名的首字符必须大写
// 声明一个类的目的就是为了告诉系统, 我们这个类中有哪些属性和行为

// OC类声明中属性只能在写@interface和@end之间的{}中
// 注意: 编写OC类属性的时, 建议将所有属性的名称前面都加上_


// 类名后面的 :NSObject 是为了让我们的Iphone类具备创建对象的能力
@interface IPhone : NSObject
{
    //    注意: 默认情况下, OC对象中的属性是不能直接访问的
    @public
    NSString *_model;
    int _cpu;
    double _size;
    NSString *_color;
    
}
//类方法只能用类名调用, 对象方法只能用对象调用
//OC中的类方法用+表示, OC中的对象方法用-表示
+(void) test;
-(void) getInfo;
// 有返回值有参数的, 打电话
// int sendMessage(int number);
// 注意: OC中的方法如果有参数, 那么每个参数的数据类型前面必须加上一个:
// 注意: 当前这个有参数的方法它的方法名称是  sendMessage:
//       冒号也是方法名称的一部分
-(int) call:(NSString*) phoneNumber;

// 下面这个方法的方法名称是 sendMessage::
//-(int) sendMessage:(NSString*) phoneNumber :(NSString*)content;
// 为了提高我们的阅读性, OC方法允许我们给每个参数添加一个标签来说明当前参数的含义
// 注意: 标签也是方法名的一部分
// 方法名是 sendMessageWithNumber:andContent:
-(int) sendMessage:(NSString*) phoneNumber andContent:(NSString*)content;
@end

#endif /* firstClass_h */
