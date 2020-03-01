//
//  Person.h
//  day07
//
//  Created by Phoenix Fate on 2020/2/29.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SportProtocol.h"
#import "Study.h"
@class Wife;
#import "WifeCondition.h"
NS_ASSUME_NONNULL_BEGIN

// 3.在OC中一个类可以遵守1个或多个协议
// 注意: OC中的类只能有一个父类, 也就是说OC只有单继承
@interface Person : NSObject <SportProtocol,Study>

// 注意: 记住一点, 类型限定是写在数据类型的右边的
@property(nonatomic,strong)Wife<WifeCondition> *wife;

-(void)show;
@end

NS_ASSUME_NONNULL_END
