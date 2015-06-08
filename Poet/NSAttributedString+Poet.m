//
//  NSAttributedString+Poet.m
//  Poet
//
//  Created by Menno Wildeboer on 08/06/15.
//  Copyright (c) 2015 Menno Wildeboer. All rights reserved.
//

#import "NSAttributedString+Poet.h"
#import "NSDictionary+Poet.h"

@implementation NSAttributedString (Poet)

- (instancetype)initWithString:(NSString *)str builder:(void (^)(NSTextAttributes *attributes))block
{
    return [self initWithString:str attributes:[NSDictionary dictionaryWithBuilder:block]];
}

@end
