//
//  NSString+count.m
//  day06-category
//
//  Created by Phoenix Fate on 2020/2/28.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import "NSString+count.h"

#import <AppKit/AppKit.h>


@implementation NSString (count)
- (int)count{
    int number=0;
     for (int i= 0; i< self.length; ++i) {
         //unichar c=[self characterAtIndex:i];
         char c=[self characterAtIndex:i];
         if(c>='0'&& c<='9'){
             number++;
         }
     }
    return number;
}

+ (int)countWithStr:(NSString *)str{
    int count=0;
    for (int i=0; i< str.length; i++) {
        unichar c=[str characterAtIndex:i];
        if (c>='0'&& c<='9') {
            count++;
        }
    }
    return count;
}
@end
