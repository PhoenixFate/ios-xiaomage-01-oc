//
//  Person.h
//  day06
//
//  Created by Phoenix Fate on 2020/2/28.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
-(void)run;
@property int age;
+(instancetype)person;
+(instancetype)personWithAge:(int)age;
@end

NS_ASSUME_NONNULL_END
