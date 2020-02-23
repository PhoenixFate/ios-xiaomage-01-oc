//
//  Student.h
//  day04
//
//  Created by Phoenix Fate on 2020/2/23.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
NS_ASSUME_NONNULL_BEGIN

@interface Student : Person
@property NSString* no;
- (instancetype)initWithAge:(int)age WithName :(NSString*)name WithNo :(NSString*)no;
@end

NS_ASSUME_NONNULL_END
