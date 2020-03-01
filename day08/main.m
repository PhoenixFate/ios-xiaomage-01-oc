//
//  main.m
//  day08
//
//  Created by Phoenix Fate on 2020/3/1.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        
        NSArray *array1=[NSArray arrayWithObject:@"aaa"];
        NSLog(@"%@",array1);
        
        //nil代表结束符 必须要有
        NSArray *array2=[NSArray arrayWithObjects:@"aaa",@"bbb",@"eee", nil];
        NSLog(@"%@",array2);
        
        
        Person *p=[Person new];
        NSObject *obj=[NSObject new];
        
        NSArray *array3=[NSArray arrayWithObjects:p,obj,@"hello", nil];
        NSLog(@"length: %lu",(unsigned long)[array3 count]);
        NSLog(@"last object: %@",[array3 lastObject]);
        NSLog(@"first object: %@",[array3 firstObject]);
        NSLog(@"array[1]: %@",[array3 objectAtIndex:1]);
        NSLog(@"if contains: %i",[array3 containsObject:@"hello"]);
        
        //创建、获取数组的简写方式
        NSArray *array4=@[@"abc",@"edf",@"123"];
        NSLog(@"%@",array4);
        NSLog(@"%@",array4[1]);
        
        // 常规遍历
        for(int i=0;i<array4.count;i++){
            NSLog(@"%@",array4[i]);
        }
        
        
        //NSArray 遍历
        // 如果是OC数组可以使用OC中的增强for循环来遍历
        // 逐个取出arr中的元素, 将取出的元素赋值给obj
        // 注意: obj的类型可以根据数组中元素的类型来写, 不一定要写NSObject
        for (NSObject *object in array4) {
            NSLog(@"%@",object);
        }
        
        
        // 使用OC数组的迭代器来遍历
        // 每取出一个元素就会调用一次block
        // 每次调用block都会将当前取出的元素和元素对应的索引传递给我们
        // obj就是当前取出的元素, idx就是当前元素对应的索引
        // stop用于控制什么时候停止遍历
        [array4 enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            NSLog(@"index: %lu; %@",(unsigned long)idx,obj);
        }];
        
    }
    return 0;
}
