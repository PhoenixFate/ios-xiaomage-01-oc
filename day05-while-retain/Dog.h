//
//  Dog.h
//  day05-while-retain
//
//  Created by Phoenix Fate on 2020/2/27.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;
NS_ASSUME_NONNULL_BEGIN

@interface Dog : NSObject
@property(nonatomic,assign)Person*person;
@end

NS_ASSUME_NONNULL_END
