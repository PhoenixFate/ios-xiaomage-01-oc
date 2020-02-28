//
//  NSString+count.h
//  day06-category
//
//  Created by Phoenix Fate on 2020/2/28.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <AppKit/AppKit.h>


#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (count)

+(int)countWithStr:(NSString*)str;
-(int)count;

@end

NS_ASSUME_NONNULL_END
