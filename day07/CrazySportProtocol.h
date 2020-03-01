//
//  CrazySportProtocol.h
//  day07
//
//  Created by Phoenix Fate on 2020/2/29.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SportProtocol.h"

NS_ASSUME_NONNULL_BEGIN


// 4.OC中的协议又可以遵守其它协议, 只要一个协议遵守了其它协议, 那么这个协议中就会自动包含其它协议的声明
@protocol CrazySportProtocol <SportProtocol>
-(void)jumping;
@end

NS_ASSUME_NONNULL_END
