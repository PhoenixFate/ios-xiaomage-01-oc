//
//  Shop.h
//  ios-xiaomage-01-oc
//
//  Created by Phoenix Fate on 2020/2/21.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#ifndef Shop_h
#define Shop_h
#import "Clip.h"
#import "Gun.h"

@interface Shop : NSObject
+(Gun *)buyGun:(int)money;
+(Clip *)buyClip:(int)money;
@end

#endif /* Shop_h */
