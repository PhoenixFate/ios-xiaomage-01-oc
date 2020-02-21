//
//  Student.h
//  ios-xiaomage-01-oc
//
//  Created by Phoenix Fate on 2020/2/21.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#ifndef Student_h
#define Student_h
typedef struct {
    int year;
    int month;
    int day;
}Date;

#pragma mark - 士兵类
@interface Student : NSObject
{
    @public
    NSString *name;
    Date birthday;
}

-(void)showInfo;

@end


#endif /* Student_h */
