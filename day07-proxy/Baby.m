//
//  Baby.m
//  day07-proxy
//
//  Created by Phoenix Fate on 2020/2/29.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import "Baby.h"

@implementation Baby
-(void)wantToEat{
    //NSLog(@"%s",__func__);
    if([self.nurse respondsToSelector:@selector(helpBabyEat)]){
        [self.nurse helpBabyEat];
    }else {
        NSLog(@"self nurse 未实现helpBabyEat");
    }
}
- (void)wantToSleep{
    //NSLog(@"%s",__func__);
    if([self.nurse respondsToSelector:@selector(helpBabySleep)]){
        [self.nurse helpBabySleep];
    }else {
        NSLog(@"self nurse 未实现helpBabySleep");
    }
}
@end
