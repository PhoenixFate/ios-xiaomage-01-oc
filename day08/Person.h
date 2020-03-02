//
//  Person.h
//  day08
//
//  Created by Phoenix Fate on 2020/3/1.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
@property int age;

-(void)sayWithContent:(NSString*)content;
@end

NS_ASSUME_NONNULL_END
