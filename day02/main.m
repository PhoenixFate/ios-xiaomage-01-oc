//
//  main.m
//  day02
//
//  Created by Phoenix Fate on 2020/2/21.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <string.h>
#import "Student.h"
#import "Soldier.h"
#import "Gun.h"
#import "Shop.h"
#import "MyClass.h"
#pragma mark - 程序入口
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    
    //NSString
    //格式化字符串
    NSString *str=[NSString stringWithFormat:@"age=%d, height=%f",20,1.75];
    NSLog(@"str= %@",str);
    
    // 2.如何计算字符串的长度
    // 包含\0
    char name[]="abc中文";
    printf("size = %ld\n",sizeof(name));
    
    // 不包含\0
    printf("length = %ld\n",strlen(name));
    
    // 不包含\0
    // 计算出来的是个数, 而不是占用的字节数
    NSString *str2=@"abc中文";
    NSUInteger strLen=[str2 length];
    NSLog(@"NSString len=%lu",strLen);
    
    
    
    //类中包含结构体
    Student *student=[Student new];
    student->name=@"王小名";
    student->birthday.year=1994;
    student->birthday.month=12;
    student->birthday.day=3;
    student->birthday=(Date){1996,9,4};
    [student showInfo];
    
    Soldier *soldier=[Soldier new];
    //Gun *gun=[Gun new];
    Gun *gun=[Shop buyGun:(800)];
    
    gun->bullet=5;
    [soldier fire:gun];
    [soldier fire:gun];
    [soldier fire:gun];
    [soldier fire:gun];
    [soldier fire:gun];
    [soldier fire:gun];

    //Clip *clip=[Clip new];
    Clip *clip=[Shop buyClip:(100)];
    
    [clip addBullet];
    [soldier fire:gun WithClip:clip];
    
    //匿名对象
    [[MyClass new] say];
    
    //!!!!!!!!!!!!!!!!!!!
    //按住option键 点击stringWithFormat，查看介绍
    //或者点击stringWithFormat，然后点击右边的？显示quick help
    [NSString stringWithFormat:@""];
    
    return 0;
}
