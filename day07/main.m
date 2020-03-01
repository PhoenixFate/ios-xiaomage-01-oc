//
//  main.m
//  day07
//
//  Created by Phoenix Fate on 2020/2/29.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"
#import "Wife.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        Person *p=[Person new];
        [p playBasketball];
        Student *stu=[Student new];
        [stu playBasketball];
        [stu study];
        
        Wife *wife=[Wife new];
        p.wife=wife;
        [p show];
    }
    return 0;
}
