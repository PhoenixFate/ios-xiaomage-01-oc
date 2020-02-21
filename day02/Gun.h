//
//  Gun.h
//  ios-xiaomage-01-oc
//
//  Created by Phoenix Fate on 2020/2/21.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#ifndef Gun_h
#define Gun_h
#import "Clip.h"

@interface Gun: NSObject
{
    @public
    int bullet;
    Clip *clip;
}
-(void)shoot;
-(void)shoot:(Clip*)clip;
@end
#endif /* Gun_h */
