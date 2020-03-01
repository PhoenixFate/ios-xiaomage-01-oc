//
//  WifeCondition.h
//  day07
//
//  Created by Phoenix Fate on 2020/2/29.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol WifeCondition <NSObject>
-(void)cooking;
-(void)washing;
-(void)job;
@end

NS_ASSUME_NONNULL_END
