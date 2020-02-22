//
//  AndroidPhone.m
//  day03-extend
//
//  Created by Phoenix Fate on 2020/2/22.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import "AndroidPhone.h"

@implementation AndroidPhone
- (void)camera{
    [super camera];
    NSLog(@"android camera");
}
+(void)camera{
    [super camera];
    NSLog(@"+ android camera");
}
@end
