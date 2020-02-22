//
//  Phone.h
//  day03-extend
//
//  Created by Phoenix Fate on 2020/2/22.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Phone : NSObject
{
    
    @protected
    int _cpu;
}
-(void)call:(NSString*)number;
-(void)sendMessage:(NSString*)number :(NSString*)content;
-(void)camera;
+(void)camera;

//类方法也是可以继承的
+(void)brand;

@end

NS_ASSUME_NONNULL_END
