//
//  Baby.h
//  day07-proxy
//
//  Created by Phoenix Fate on 2020/2/29.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HelpBabyCondition.h"

NS_ASSUME_NONNULL_BEGIN


/*
什么是代理设计模式
心相印和超市
超市就是心相印的代理, 它可以帮助心相印卖纸巾
也就是说, 代理也帮助另外一个类做一些事情

代理设计模式的应用场景
1.当A对象想监听B对象的一些变化时, 可以使用代理设计模式
保姆想监听婴儿的变化, 那么保姆就可以成为婴儿的代理, 当婴儿发生变化之后保姆就可以监听到

2.当B对象发生一些事情, 想通知A对象的时候, 可以使用代理设计模式
婴儿想通知保姆, 那么就可以 让保姆成为婴儿的代理, 只要保姆成为婴儿的代理, 以后婴儿发生变化就可以通知保姆

3.当对象A无法处理某些行为的时候,想让对象B帮忙处理(让对象B成为对象A的代理对象)
婴儿无法自己吃东西, 也无法自己入睡, 所以可以让保姆帮忙处理. 只要让保姆成为婴儿的代理就可以帮婴儿喂它吃东西和哄他睡觉
*/
@interface Baby : NSObject

-(void)wantToEat;
-(void)wantToSleep;
@property(nonatomic) id <HelpBabyCondition> nurse;
@end

NS_ASSUME_NONNULL_END
