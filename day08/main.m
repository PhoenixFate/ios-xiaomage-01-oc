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
        
        
        //让数组中的所有对象执行同一方法
        Person *p1=[Person new];
        Person *p2=[Person new];
        Person *p3=[Person new];
        Person *p4=[Person new];
        NSArray *array5=@[p1,p2,p3,p4];
        
        
        // 如果使用OC数组存储对象, 可以调用OC数组的方法让数组中所有的元素都执行指定的方法
        // 注意点: 如果数组中保存的不是相同类型的数据, 并且没有相同的方法, 那么会报错
        //[array5 makeObjectsPerformSelector:@selector(say)];
        
        // withObject: 需要传递给调用方法的参数
        // 多个参数只能用遍历的方式s
        [array5 makeObjectsPerformSelector:@selector(sayWithContent:) withObject:@"say something"];
        
        
        
        
        
        //NSArray 数组排序
        NSArray *array6=@[@23,@34,@67,@2,@67];
        NSLog(@"排序前: %@",array6);
        // 注意: 想使用compare方法对数组中的元素进行排序, 那么数组中的元素必须是Foundation框架中的对象, 也就是说不能是自定义对象
        NSArray *arrayAfterSort=[array6 sortedArrayUsingSelector:@selector(compare:)];
        NSLog(@"排序后: %@",arrayAfterSort);
        
        Person *p11= [Person new];
        Person *p12=[Person new];
        Person *p13=[Person new];
        Person *p14=[Person new];
        p11.age=23;
        p12.age=45;
        p13.age=12;
        p14.age=53;
        
        
        NSArray *personArray=@[p11,p12,p13,p14];
        NSLog(@"person array: %@",personArray);
        
        NSArray *newPersonArray=[personArray sortedArrayWithOptions:(NSSortStable) usingComparator:^NSComparisonResult(Person* person1, Person* person2) {
            return person1.age>person2.age;
        }];
        NSLog(@"person array: %@",newPersonArray);
        
        
        
        
        //NSArray 和 NSString 之间的转换
        NSLog(@"convert bewteen NSArray and NSString");
        NSArray *array8=@[@"234",@"bcd",@"def"];
        // 需求: 用-将所有的姓名连接起来生成一个字符串
        
        NSMutableString *mutableString1=[NSMutableString string];
        
        for(int i=0;i<array8.count;i++){
            [mutableString1 appendString:array8[i]];
            [mutableString1 appendString:@"-"];
        }
        [mutableString1 deleteCharactersInRange:NSMakeRange(mutableString1.length-1,1)];
        NSLog(@"string array: %@",mutableString1);
        
        
        NSString *stringArray=[array8 componentsJoinedByString:@"-"];
        NSLog(@"string array2: %@",stringArray);
        
        // 通过一个字符串生成一个数组
        // 也叫做字符串切割
        NSString *stringArray2 = @"lnj**lmj**jjj";
        NSArray *separatedArray=[stringArray2 componentsSeparatedByString:@"**"];
        NSLog(@"%@",separatedArray);
        
        NSLog(@"convert bewteen NSArray and NSString");
        
        
        
        NSLog(@"write array to file");
        NSArray *array9=@[@"234",@"bcd",@"def"];
        BOOL isSuccess=[array9 writeToFile:@"/Users/phoenix/XcodeProjects/ios-xiaomage-01-oc/day08/abc.plist" atomically:(YES)];
        NSLog(@"writing array to file: %i",isSuccess);
        
        
        NSArray *array10=[NSArray arrayWithContentsOfFile:@"/Users/phoenix/XcodeProjects/ios-xiaomage-01-oc/day08/abc.plist"];
        NSLog(@"%@",array10);
        NSLog(@"write array to file");
        
        
        
        
        NSLog(@"-----mutable array-----");
        NSMutableArray *mutableArray1=[NSMutableArray array];
        //add
        [mutableArray1 addObject:@"one"];
        NSLog(@"%@",mutableArray1);
        // 将指定数组中的元素都取出来, 放到arrM中
        // 并不是将整个数组作为一个元素添加到arrM中
        [mutableArray1 addObjectsFromArray:@[@"234",@"bcd"]];
        NSLog(@"%@",mutableArray1);
        //在指定index插入单个元素
        [mutableArray1 insertObject:@"999" atIndex:(2)];
        NSLog(@"%@",mutableArray1);
        
        //在指定index插入多个元素
        NSIndexSet *indexSet=[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(2, 2)];
        [mutableArray1 insertObjects:@[@"888",@"777"] atIndexes:indexSet];
        NSLog(@"%@",mutableArray1);

        
        //删除某index 元素
        [mutableArray1 removeObjectAtIndex:0];
        //删除某个元素
        [mutableArray1 removeObject:@"777"];
        NSLog(@"%@",mutableArray1);
        //删除最后一个元素
        [mutableArray1 removeLastObject];
        NSLog(@"%@",mutableArray1);

        
        //替换
        [mutableArray1 replaceObjectAtIndex:(0) withObject:(@"new replace")];
        NSLog(@"%@",mutableArray1);

        //获取
        NSLog(@"%@",[mutableArray1 objectAtIndex:0]);
        
        
        //简写方式
        NSLog(@"%@",mutableArray1[0]);
        mutableArray1[0]=@"new array2";
        NSLog(@"%@",mutableArray1);
        
        
        NSLog(@"-----mutable array-----");
        
    }
    return 0;
}
