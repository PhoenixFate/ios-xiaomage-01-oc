//
//  Student.m
//  day04
//
//  Created by Phoenix Fate on 2020/2/23.
//  Copyright © 2020 Phoenix Fate. All rights reserved.
//

#import "Student.h"

@implementation Student

- (instancetype)initWithAge:(int)age WithName :(NSString*)name WithNo :(NSString*)no{
    self=[super initWithAge:age WithName:name];
    NSLog(@"%@",self);
    if(self){
        _no=no;
        
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"age: %d; name: %@; no:%@", [super age],[super name],_no];
}
@end
