//
//  Soldier.h
//  ios-xiaomage-01-oc
//
//  Created by Phoenix Fate on 2020/2/21.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#ifndef Soldier_h
#define Soldier_h
#import "Gun.h"
#import "Clip.h"
@interface Soldier:NSObject{
    @public
    NSString *name;
    double height;
    double weight;
}
-(void) fire:(Gun*)gun;
-(void) fire:(Gun*)gun WithClip:(Clip*)clip;
@end
#endif /* Soldier_h */
