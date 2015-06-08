//
//  NSDictionary+Poet.m
//  Poet
//
//  Created by Menno Wildeboer on 08/06/15.
//  Copyright (c) 2015 Menno Wildeboer. All rights reserved.
//

#import "NSDictionary+Poet.h"

@implementation NSDictionary (Poet)

+ (instancetype)dictionaryWithBuilder:(void (^)(NSTextAttributes *attributes))block
{
    NSParameterAssert(block);
    
    NSTextAttributes *attributes = [[NSTextAttributes alloc] init];
    block(attributes);
    return [attributes dictionaryValue];
}

@end
