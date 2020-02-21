//
//  Clip.h
//  ios-xiaomage-01-oc
//
//  Created by Phoenix Fate on 2020/2/21.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#ifndef Clip_h
#define Clip_h
#pragma mark - 弹夹
@interface Clip: NSObject
{
    @public
    int bullet;
}
// 上子弹的方法
-(void)addBullet;

@end

#endif /* Clip_h */
