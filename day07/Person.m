//
//  Person.m
//  day07
//
//  Created by Phoenix Fate on 2020/2/29.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import "Person.h"
#import "Wife.h"

@implementation Person
- (void)playBaseball{
    NSLog(@"%s",__func__);
}
- (void)playFootball{
    NSLog(@"%s",__func__);
}
- (void)playBasketball{
    NSLog(@"%s",__func__);
}
- (void)study{
    NSLog(@"%s",__func__);
}


- (void)show{
    //    注意: 虽然在接受某一个对象的时候, 对这个对象进行了类型限定(限定它必须实现某个协议), 但是并不意味着这个对象就真正的实现了该方法. 所以每次在调用对象的协议方法时应该进行一次验证
    if([self.wife respondsToSelector:@selector(washing)]){
        [self.wife washing];
    }
    if([self.wife respondsToSelector:@selector(cooking)]){
        [self.wife cooking];
    }
    if([self.wife respondsToSelector:@selector(job)]){
        [self.wife job];
    }
}
@end
