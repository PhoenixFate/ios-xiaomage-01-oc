//
//  Person.m
//  day03
//
//  Created by Phoenix Fate on 2020/2/22.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import "Person.h"

@implementation Person3
-(void)setAge:(int)age{
    self->_age=age;
}
-(void)setName:(NSString*)name{
    self->_name=name;
}
-(void)setHeight:(double)height{
    self->_height=height;
}
-(void)setWeight:(double)weight{
    self->_weight=weight;
}
-(int)age{
    return _age;
}
-(NSString*)name{
    return _name;
}
-(double)height{
    return _height;
}
-(double)weight{
    return _weight;
}
-(void)test{
    NSLog(@"test");
}
@end

