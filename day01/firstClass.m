//
//  FirstClass.m
//  day01
//
//  Created by Phoenix Fate on 2020/2/20.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FirstClass.h"

// 2.如何编写类的实现
// 以@implementation开头, 以@end结尾, 然后在class对应的地方写上声明时声明的类的名称, 必须和声明的类名一模一样
@implementation IPhone
+(int)sumWithValue1 :(int)value1 andValue2: (int)value2{
    return value1+value2;
}

+(NSString*)getColorName:(enum MyColor)mycolor{
    NSString *colorName;
    switch (mycolor) {
        case BlackColor:
            colorName=@"黑色";
            break;
        case WhiteColor:
            colorName=@"白色";
        default:
            break;
    }
    return colorName;
    
}

-(void) hello{
    NSLog(@"hello");
}
// 行为的实现
-(void) getInfo{
    [self hello];
    NSString *colorName=[IPhone getColorName:(self->color1)];
    NSLog(@"get info:::: color: %@; size: %f newColor:%@",self->_color,self->_size,colorName);
}
+(void) test{
    NSLog(@"类方法");
}
-(int) call:(NSString*) phoneNumber{
    NSLog(@"打电话给 %@ 成功了",phoneNumber);
    return 1;
}
-(int) sendMessage: (NSString*) phoneNumber andContent: (NSString*)content{
    NSLog(@"发消息给 %@ 成功了, 发送的内容是: %@",phoneNumber,content);
    return 1;
}


@end

