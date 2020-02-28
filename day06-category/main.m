//
//  main.m
//  day06-category
//
//  Created by Phoenix Fate on 2020/2/28.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Person+sports.h"
#import "NSString+count.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        Person *p=[Person new];
        [p run];
        [p playFootball];
        NSString *str = @"a1jj46kf1d5jlwf7l9d8";
        
        int count = [str count];
        NSLog(@"count = %i", count);
        
        count=[NSString countWithStr:str];
        NSLog(@"count = %i", count);
        
    }
    return 0;
}
