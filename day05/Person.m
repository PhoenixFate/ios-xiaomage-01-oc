//
//  Person.m
//  day05
//
//  Created by Phoenix Fate on 2020/2/27.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import "Person.h"
#import "Room.h"
#import "Car.h"


@implementation Person

// 当A对象想使用B对象一定要对B对象进行一次retain, 这样才能保证A对象存在B对象就存在, 也就是说这样才能保证无论在什么时候在A对象中都可以使用B对象
// 当A对象释放的时候, 一定要对B对象进行一次release, 这样才能保证A对象释放了, B对象也会随之释放, 避免内存泄露
// 总结一句话: 有增就有减
- (void)dealloc
{
    [_room release];
    _room=nil;
    [_car release];
    _car=nil;
    NSLog(@"%s",__func__);
    // 注意:super dealloc一定要写到所有代码的最后
    // 一定要写在dealloc方法的最后面
    [super dealloc];    
}
- (void)setRoom:(Room *)room{
    if(_room!=room){
        [_room release];
//        [room retain];
//        _room=room;
        //retain不仅会对引用计数器+1 而去还会返回当前对象
        _room=[room retain];
    }
}
- (Room *)room{
    return _room;
}

@end
