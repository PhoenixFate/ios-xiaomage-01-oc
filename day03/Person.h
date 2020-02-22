//
//  Person.h
//  day03
//
//  Created by Phoenix Fate on 2020/2/22.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person3 : NSObject
{
    int _age;
    NSString *_name;
    double _height;
    double _weight;
}
-(void)setAge:(int)age;
-(void)setName:(NSString*)name;
-(void)setHeight:(double)height;
-(void)setWeight:(double)weight;
-(int)age;
-(NSString*)name;
-(double)height;
-(double)weight;
-(void)test;
@end

NS_ASSUME_NONNULL_END
