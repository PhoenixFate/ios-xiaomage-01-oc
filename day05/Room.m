//
//  Room.m
//  day05
//
//  Created by Phoenix Fate on 2020/2/27.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import "Room.h"

@implementation Room
- (void)dealloc
{
    NSLog(@"%s ;no: %d",__func__,_no);
    // 注意:super dealloc一定要写到所有代码的最后
    // 一定要写在dealloc方法的最后面
    [super dealloc];
}
@end
