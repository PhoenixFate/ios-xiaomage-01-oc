//
//  main.m
//  day06
//
//  Created by Phoenix Fate on 2020/2/28.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

void printRose(void){
    printf("  {@} \n");
    printf("   | \n");
    printf("  \\|/ \n");
    printf("   | \n");
}
void printMultipleRose(int num){
    for(int i=0;i<num;i++){
        printf("  {@} \n");
        printf("   | \n");
        printf("  \\|/ \n");
        printf("   | \n");
    }
}

int sum(int value1,int value2){
    return value1+value2;
}

int minus(int value1,int value2){
    return value1-value2;
}

typedef int (*calculate)(int,int);

typedef int (^calculateBlock)(int,int);

int main(int argc, const char * argv[]) {
    
    
    // 创建一个自动释放池
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        Person *p=[Person new];
        
        // 不用关心对象什么时候释放, 只要能够访问p的地方都可以使用
        // 只要调用了autorelease, 那么就不用调用release了
        [p autorelease];
        [p run];
    }
    // 自动释放池销毁了, 给自动释放池中所有的对象发送一条release消息
    
    
    @autoreleasepool {
        Person *p=[[Person new]autorelease];
        [p run];
    }
    
    //ios5.0之前：
    // 创建一个自动释放池
    // 自动释放池只是将release延迟了而已
    NSAutoreleasePool *pool=[[NSAutoreleasePool alloc]init];
    Person *p=[[Person new]autorelease];
    [p run];
    
    // 销毁一个自动释放池
    [pool release];
    
    
    
    
    
    
    // 4.一个程序中可以创建N个自动释放池, 并且自动释放池还可以嵌套
    // 如果存在多个自动释放池的时候, 自动释放池是以 "栈" 的形式存储的
    // 栈的特点: 先进后出
    
    // 给一个对象方法发送一条autorelease消息, 永远会将对象放到栈顶的自动释放池
    @autoreleasepool { // 创建第一个释放池
        @autoreleasepool { // 创建第二个释放池
            @autoreleasepool { // 创建第三个释放池
                Person *p = [[[Person alloc] init] autorelease];
                [p run];
            } // 第三个释放池销毁
            
            Person *p = [[[Person alloc] init] autorelease];
            [p run];
        }// 第二个释放池销毁
    }// 第一个释放池销毁
    
    
    
    //使用类工厂方法创建对象，简化操作
    @autoreleasepool {
        Person *p=[Person person];
        p.age=20;
        NSLog(@"Person person; age=%d",p.age);
        
        Person *p2=[Person personWithAge:100];
        NSLog(@"Person person; age=%d",p2.age);
    }
    
    
    
    
    NSLog(@"------- Block -----------");
    printRose();
    // void代表指向的函数没有返回值
    // (void)代表指向的函数没有形参
    // (*roseP)代表roseP是一个指向函数的指针
    void (*roseFun)(void);
    roseFun=printRose;
    roseFun();
    
    
    // 定义一个block变量,
    // block和函数一样,可以没有返回值,也没有形参
    // 也可以没有返回值有形参
    // 也可以有返回值没有形参
    // 也可以有返回值有形参
    // 所以, 在定义一个block变量的时候, 也需要告诉该变量将来保存的代码有没有返回值和形参
    // void代表block将来保存的代码没有返回值
    void (^roseBlock)(void);
    roseBlock=^(void){
        printf("  {@} \n");
        printf("   | \n");
        printf("  \\|/ \n");
        printf("   | \n");
    };
    roseBlock();
    
    void (^roseBlock2)(int)=^(int num){
        for(int i=0;i<num;i++){
            printf("  {@} \n");
            printf("   | \n");
            printf("  \\|/ \n");
            printf("   | \n");
        }
    };
    roseBlock2(3);
    
    
    calculate sumP=sum;
    NSLog(@"sum=%i",sumP(10,20));
    calculate minusP=minus;
    NSLog(@"minus=%i",minusP(20,10));
    calculateBlock sumB;
    sumB=^(int value1,int value2){
        return value1+value2;
    };
    NSLog(@"sum=%i",sumB(10,20));
    calculateBlock minusB;
    minusB=^(int value1,int value2){
        return value1-value2;
    };
    NSLog(@"minus=%i",minusB(20,10));

    
    
    NSLog(@"------- Block -----------");
    
    
    return 0;
}
