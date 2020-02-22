//
//  Gun.m
//  day03
//
//  Created by Phoenix Fate on 2020/2/22.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import "Gun.h"

@implementation Gun
- (void)shoot{
    _bullet--;
    NSLog(@"射击了一枪 还剩 %i 发子弹",_bullet);
}
- (void)setBullet:(int)bullet{
    if(bullet>0 && bullet<=5){
        self->_bullet=bullet;
        return;
    }else {
        NSLog(@"传入的子弹数量 需要是1-5之间");
    }
}
- (int)bullet{
    return _bullet; 
}

-(void)setSize:(int)size{
    _size=size;
}
- (int)size{
    return _size;
}
- (void)test {
    //return 5;
}
@end
