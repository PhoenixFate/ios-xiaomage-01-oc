//
//  Gun.m
//  day02
//
//  Created by Phoenix Fate on 2020/2/21.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Gun.h"
#import "Clip.h"
@implementation Gun
-(void)shoot
{
    if(bullet>0){
        NSLog(@"打了一枪 %i",bullet);
        self->bullet--;
    }else {
        NSLog(@"没有子弹了，请换弹夹");
    }
}

-(void)shoot:(Clip*)clip
{
    // 判断有没有弹夹
    // nil == null == 没有值
    if(clip!=nil){
        if(clip->bullet>0){
            NSLog(@"打了一枪 %i", clip->bullet);
            clip->bullet--;
        }else
        {
            NSLog(@"没有子弹了");
        }
        
    }else{
        NSLog(@"没有弹夹, 请换弹夹");
    }
}

@end
