//
//  main.m
//  day07-proxy
//
//  Created by Phoenix Fate on 2020/2/29.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Baby.h"
#import "Nurse.h"
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        Baby *baby=[Baby new];
        Nurse *nurse=[Nurse new];
        Student *student=[Student new];
        
        baby.nurse=nurse;
        
        [baby wantToEat];
        [baby wantToSleep];
        
        //换人照顾baby
        baby.nurse=student;
        [baby wantToEat];
        [baby wantToSleep];
    }
    return 0;
}
