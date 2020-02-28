//
//  main.m
//  day06-block
//
//  Created by Phoenix Fate on 2020/2/28.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

// 当发现代码的前面和后面都是一样的时候, 这个时候就可以使用block
void goToWork(void (^workBlock)(void))
{
    NSLog(@"起床");
    NSLog(@"穿衣服");
    NSLog(@"洗漱");
    NSLog(@"喝早茶");
    NSLog(@"驾车去上班");
    
    // 不一样
    workBlock();
    
    NSLog(@"收拾东西");
    NSLog(@"驾车回家");
    NSLog(@"吃晚饭");
    NSLog(@"洗澡");
    NSLog(@"睡觉");
}

void goToWorkInDay1()
{
    goToWork(^{
        NSLog(@"认识新同事");
    });
}
void goToWorkInDay2()
{
    goToWork(^{
        NSLog(@"熟悉公司代码");
    });
}
void goToWorkInDay3()
{
    goToWork(^{
        NSLog(@"开始编写代码");
    });
}
void goToWorkInDay4()
{
    goToWork(^{
        NSLog(@"应用程序上架");
    });
}

/*
 找到需要读取的文件
 读取文件
 
 操作文件
 
 关闭文件
 */

int main(int argc, const char * argv[]) {
    
    goToWorkInDay2();
    
    
    //block注意点：
    // 3.默认情况下, 不可以在block中修改外界变量的值
    // 因为block中的变量和外界的变量并不是同一个变量
    // 如果block中访问到了外界的变量, block会将外界的变量拷贝一份到堆内存中
    // 因为block中使用的外界变量是copy的, 所以在调用之前修改外界变量的值, 不会影响到block中copy的值
    
    int a=10;
    NSLog(@"%p",&a);
    void (^myBlock)(void)=^{
        NSLog(@"%p",&a);
        NSLog(@"a=%i",a);
    };
    a=20;
    myBlock();
    
    
    
    // 如果想在block中修改外界变量的值, 必须在外界变量前面加上__block
    // 如果在block中修改了外界变量的值, 会影响到外界变量的值
    __block int a3=10;
    void (^myBlock3)(void)=^{
        a3=50;
        NSLog(@"a3=%i",a3);
    };
    a3=20;
    myBlock3();
    
    // block是存储在堆中还是栈中
    // 默认情况下block存储在栈中, 如果对block进行一个copy操作, block会转移到堆中
    // 如果block在栈中, block中访问了外界的对象, 那么不会对对象进行retain操作
    // 但是如果block在堆中, block中访问了外界的对象, 那么会对外界的对象进行一次retain
    
    // 如果在block中访问了外界的对象, 一定要给对象加上__block, 只要加上了__block, 哪怕block在堆中, 也不会对外界的对象进行retain
    // 如果是在ARC开发中就需要在前面加上__weak
    __block Person *p = [[Person alloc] init]; // 1
    
    // 如果在做iOS开发时, 在ARC中不这样写容易导致循环引用
    //    Person *p = [[Person alloc] init];
    //    __weak Person *weakP = p;
    
    //NSLog(@"retainCount = %lu", [p retainCount]);
    void (^myBlock4)(void) = ^{
        NSLog(@"p = %@", p); // 2
        //        NSLog(@"p = %p", weakP);
        //NSLog(@"block retainCount = %lu", [p retainCount]);
    };
    //Block_copy(myBlock4);
    myBlock4();
    
    //[p release]; // 1
    return 0;
}
