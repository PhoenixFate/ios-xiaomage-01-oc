//
//  Shop.m
//  day02
//
//  Created by Phoenix Fate on 2020/2/21.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shop.h"

@implementation Shop
+ (Gun *)buyGun:(int)money
{
    Gun *gun=[Gun new];
    return gun;
}

+ (Clip *)buyClip:(int)money
{
    Clip *clip=[Clip new];
    [clip addBullet];
    return clip;
}


@end

