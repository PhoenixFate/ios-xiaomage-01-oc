//
//  Person.h
//  day05-while-retain
//
//  Created by Phoenix Fate on 2020/2/27.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Dog;

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
@property(nonatomic ,retain)Dog *dog;

@end

NS_ASSUME_NONNULL_END
