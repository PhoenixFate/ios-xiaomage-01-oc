//
//  Phone.m
//  day03-extend
//
//  Created by Phoenix Fate on 2020/2/22.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import "Phone.h"

@implementation Phone
- (void)call:(NSString *)number {
    NSLog(@"给 %@ 打电话",number);
}
- (void)sendMessage:(NSString *)number :(NSString *)content{
    NSLog(@"给 %@ 发消息: %@",number,content);
}
+ (void)brand{
    NSLog(@"普通的品牌");
}
- (void)camera{
    NSLog(@"father camera");
}
+(void)camera{
    NSLog(@"+ father camer");
}
@end
