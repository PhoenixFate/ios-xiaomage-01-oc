//
//  Soldier.m
//  day02
//
//  Created by Phoenix Fate on 2020/2/21.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Soldier.h"
#import "Gun.h"
@implementation Soldier
-(void) fire:(Gun*)gun{
    [gun shoot];
}
- (void)fire:(Gun *)gun WithClip:(Clip *)clip
{
    if(gun!=nil && clip!=nil){
        [gun shoot:clip];
    }
}
@end
