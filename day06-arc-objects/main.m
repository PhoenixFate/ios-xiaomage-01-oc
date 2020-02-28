//
//  main.m
//  day06-arc-objects
//
//  Created by Phoenix Fate on 2020/2/28.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"
// MRC, A对象想拥有B对象, 需要对B对象进行一次retain
//      A对象不用B对象了, 需要对B对象进行一次release
//      property的时候进行retain, dealloc的时候进行release


// ARC, A对象想拥有B对象, 那么就需要用一个强指针指向B对象
//      A对象不用B对象了, 什么都不需要做, 编译器会自动帮我们做

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        Person *person=[Person new];
        person.age=40;
        Dog *dog=[Dog new];
        dog.name=@"lucy";
        person.dog=dog;

        
        dog.owner=person;
        NSLog(@"---------------");
    }
    return 0;
}
