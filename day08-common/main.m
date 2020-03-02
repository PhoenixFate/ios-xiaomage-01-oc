//
//  main.m
//  day08-common
//
//  Created by Phoenix Fate on 2020/3/2.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        //oc中常用的结构体
        //1.保存坐标的
        CGPoint point=NSMakePoint(10, 20);
        NSLog(@"point: x: %.2f; y:%.2f",point.x,point.y);
        
        //2.保存尺寸的
        CGSize size=NSMakeSize(100, 200);
        NSLog(@"size: width:%.2f; height:%.2f",size.width,size.height);
        
        //3.保存坐标和尺寸
        CGRect rect=NSMakeRect(10, 20, 100, 200);
        NSLog(@"rect: x:%.2f; y:%.2f; width:%.2f; height:%.2f",rect.origin.x,rect.origin.y,rect.size.width,rect.size.height);
        
        // 4.在开发中苹果推荐我们使用CG开头的结构体, 也就是说NS开头的结构体一般不用
        
        
        
        //NSNumber
        NSLog(@"----- NSNumber -----");
        //1.基本类型转NSNumber
        int age=10;
        double height=1.73;
        NSNumber *number1=[NSNumber numberWithInt:age];
        NSLog(@"%@",number1);
        NSNumber *number2=[NSNumber numberWithDouble:height];
        NSLog(@"%@",number2);
        //2.NSNumber转基本数据
        int temp=[number1 intValue];
        NSLog(@"%d",temp);
        double doubeTemp=[number2 doubleValue];
        NSLog(@"%f",doubeTemp);
        
        //3.基本类型转NSNumber简写
        // 注意: 如果传入的是变量那么必须在@后面写上(), 如果传入的常量, 那么@后面的()可以省略
        NSNumber *number3=@(age);
        NSLog(@"%@",number3);
        NSNumber *number4=@10.20;
        NSLog(@"%@",number4);
        
        NSLog(@"----- NSNumber -----");
        
        
        NSLog(@"----- NSValue -----");
        typedef struct{
            int age;
            char *name;
            double height;
        } Person;
        Person p={10,"tom",123.3};
        //NSArray中不能存放结构体，所以需要使用NSValue包装一下
        //使用NSValue包装结构体
        NSValue *value=[NSValue valueWithBytes:&p objCType:@encode(Person)];
        NSArray *array7=@[value];
        NSLog(@"array7: %@",array7);
        //从NSValue中取出自定义的结构体变量
        Person newPerson;
        [value getValue:&newPerson];
        NSLog(@"new person: name:%s; age:%d; height:%f",newPerson.name,newPerson.age,newPerson.height);
        NSLog(@"----- NSValue -----");
        
        
        
        NSLog(@"----- NSDate -----");
        // 1.NSDate创建和基本概念
        // 只要是通过date方法创建的时间对象, 对象中就保存了当前的时间
        NSDate *now=[NSDate date];
        NSLog(@"now=%@",now);
        // 在now的基础上追加多少秒
        NSDate *newDate=[now dateByAddingTimeInterval:10];
        NSLog(@"newDate=%@",newDate);
        
        // 1.获取当前所处的时区
        NSTimeZone *zone=[NSTimeZone systemTimeZone];
        NSLog(@"zone: %@",zone);
        // 2.获取当前时区和指定时区的时间差
        NSInteger seconds=[zone secondsFromGMTForDate:now];
        NSLog(@"second: %ld",(long)seconds);
        NSDate *newDate2 = [now dateByAddingTimeInterval:seconds];
        NSLog(@"newDate2 = %@", newDate2);
        
        // 2.时间格式化  NSDate --> NSString
        // xxxx年xx月xx日 xx小时xx分钟xx秒
        // xxxx/xx/xx  xx/xx/xx
        // xx/xx/xxxx  xx/xx/xx
        NSDate *now2=[NSDate date];
        //创建一个时间格式化对象
        NSDateFormatter *formatter=[NSDateFormatter new];
        // 告诉时间格式化对象, 按照什么样的格式来格式化时间
        // yyyy 年
        // MM 月
        // dd 日
        // HH 24小时  hh 12小时
        // mm 分钟
        // ss 秒钟
        // Z 时区
        formatter.dateFormat = @"yyyy年MM月dd日 HH时mm分ss秒 Z";
        // 利用时间格式化对象对时间进行格式化
        NSString *res = [formatter stringFromDate:now2];
        NSLog(@"res = %@", res);
        
        // NSString --> NSDate
        NSString *stringDate=@"2019-01-23 10:02:12";
        NSDateFormatter *formatter2=[NSDateFormatter new];
        formatter2.dateFormat=@"yyyy-MM-dd HH:mm:ss";
        NSDate *date4=[formatter2 dateFromString:stringDate];
        NSLog(@"%@",date4);
        
        NSLog(@"----- NSDate -----");
        
        
        
        
        NSLog(@"----- NSCalendar -----");
        //日历
        NSCalendar *calendar1=[NSCalendar currentCalendar];
        // 利用日历类从当前时间对象中获取 年月日时分秒(单独获取出来)
        // components: 参数的含义是, 问你需要获取什么?
        // 一般情况下如果一个方法接收一个参数, 这个参数是是一个枚举 , 那么可以通过|符号, 连接多个枚举值
        
        NSCalendarUnit calendarUnit = NSCalendarUnitYear |
        NSCalendarUnitMonth |
        NSCalendarUnitDay |
        NSCalendarUnitHour |
        NSCalendarUnitMinute |
        NSCalendarUnitSecond;
        
        NSDate *now3=[NSDate date];
        NSDateComponents *components=[calendar1 components:(calendarUnit ) fromDate:now3];
        NSLog(@"%ld",components.year);
        NSLog(@"%ld",components.month);
        NSLog(@"%ld",components.day);

        NSLog(@"%ld",components.hour);
        NSLog(@"%ld",components.minute);
        NSLog(@"%ld",components.second);
        
        //比较两个时间的差值

        NSLog(@"----- NSCalendar -----");
        
    }
    return 0;
}
