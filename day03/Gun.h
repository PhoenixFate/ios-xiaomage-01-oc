//
//  Gun.h
//  day03
//
//  Created by Phoenix Fate on 2020/2/22.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Gun : NSObject
{
    int _bullet;
    int _size;
    NSString *model;
    int _color;
    double _weight;
    
}
-(void)shoot;
/*
 setter方法:
 作用: 设置成员变量的值
 格式:
 1. setter方法一定是对象方法
 2. 一定没有返回值
 3. 一定以set开头, 并且set后面跟上需要设置的成员变量的名称去掉下划线, 并且首字母大写
 4. 一定有参数, 参数类型一定和需要设置的成员变量的类型一致, 并且参数名称就是成员变量的名称去掉下划线
*/
-(void)setBullet:(int)bullet;

/*
getter方法:
作用: 获取成员变量的值
格式:
1. getter方法一定是对象方法
2.一定有返回值, 而且返回值一定和获取的成员变量的类型一致
3.方法名称就是获取的成员变量的名称去掉下划线
4. 一定没有参数
*/
-(int)bullet;

-(void)setSize:(int)size;
-(int)size;
-(void)test;
@end

NS_ASSUME_NONNULL_END
