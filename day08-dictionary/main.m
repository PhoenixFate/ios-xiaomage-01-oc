//
//  main.m
//  day08-dictionary
//
//  Created by Phoenix Fate on 2020/3/2.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        // 1.如何创建
        NSDictionary *dictionary1=[NSDictionary dictionaryWithObject:@"tom" forKey:@"name"];
        NSString *name=[dictionary1 objectForKey:@"name"];
        NSLog(@"name=%@",name);
        
        NSDictionary *dictionary2=[NSDictionary dictionaryWithObjects:@[@"carry",@23,@"1.75"] forKeys:@[@"name",@"age",@"height"]];
        NSLog(@"%@",dictionary2);
        NSLog(@"%@ %@ %@",[dictionary2 objectForKey:@"name"],[dictionary2 objectForKey:@"age"],[dictionary2 objectForKey:@"height"]);
        
        //开发中一般这么写
        NSDictionary *dictionary3=@{@"name":@"lucy",@"age":@28};
        NSLog(@"dictionary3: %@",dictionary3);
        NSLog(@"dictionary3 name: %@",dictionary3[@"name"]);
        
        
        //字典的遍历
        for(int i=0;i<dictionary3.count;i++){
            //获取字典所有的key
            NSArray *keys=[dictionary3 allKeys];
            
            //输出当前位置的key
            //NSLog(@"%@",keys[i]);
            NSString *key=keys[i];
            NSLog(@"key=%@, value=%@",key,dictionary3[key]);
        }
        
        for(NSString *key in dictionary3){
            NSLog(@"key=%@, value=%@",key,dictionary3[key]);
        }
        
        [dictionary3 enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
            NSLog(@"key=%@, value=%@",key,obj);
        }];
        
        
        //3.字典文件读写
        //字典和数组不同，字典中保存的数据是无序的
        NSDictionary *dictionary4 = @{@"name":@"lnj", @"age":@"30", @"height":@"1.75"};
        NSString *path=@"/Users/phoenix/XcodeProjects/ios-xiaomage-01-oc/day08-dictionary/abc.plist";
        [dictionary4  writeToFile:path atomically:YES];
        
        
    
        //MutableDictionary
        NSLog(@"----- mutableDictionary ------");
        //1.创建MutableDictionary字典
        NSMutableDictionary *mutableDictionary=[NSMutableDictionary dictionary];
        NSLog(@"%@",mutableDictionary);
        //2.添加数据
        [mutableDictionary setObject:@"name" forKey:@"tomcat"];
        NSLog(@"%@",mutableDictionary);
        [mutableDictionary setValuesForKeysWithDictionary:@{@"age":@12,@"height":@"1.75"}];
        NSLog(@"%@",mutableDictionary);
        
        //删除
        [mutableDictionary removeObjectForKey:@"age"];
        NSLog(@"%@",mutableDictionary);

        //修改
        [mutableDictionary setObject:@"1.65" forKey:@"height"];
        NSLog(@"%@",mutableDictionary);

        //注意事项
        // 1.不能使用@{}来创建一个可变的字典
        
        // 2.如果是不可变数组, 那么key不能相同
        // 如果是不可变字典出现了同名的key, 那么后面的key对应的值不会被保存
        // 如果是在可变数组中, 后面的会覆盖前面的
        NSDictionary *dict5 = @{@"name":@"lmj", @"name":@"lnj"};
        NSLog(@"dict5 = %@", dict5);
        
        NSMutableDictionary *dictM = [NSMutableDictionary dictionaryWithObjects:@[@"lmj", @"lnj"] forKeys:@[@"name", @"name"]];
        NSLog(@"dict = %@", dictM);
        
        
        
        NSLog(@"----- mutableDictionary ------");

    }
    
    
    return 0;
}
