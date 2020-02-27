//
//  main.m
//  day05-while-retain
//
//  Created by Phoenix Fate on 2020/2/27.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        Person*person=[Person new];
        Dog*dog=[Dog new];
        
        // 如果A对用要拥有B对象, 而B对应又要拥有A对象, 此时会形成循环retain
        // 如何解决这个问题: 不要让A retain B, B retain A
        // 让其中一方不要做retain操作即可
        person.dog=dog;
        dog.person=person;
        
        
        [dog release];
        [person release];
    }
    return 0;
}
