//
//  NSString+Poet.m
//  Poet
//
//  Created by Menno Wildeboer on 08/06/15.
//  Copyright (c) 2015 Menno Wildeboer. All rights reserved.
//

#import "NSAttributedString+Poet.h"
#import "NSString+Poet.h"

@implementation NSString (Poet)

- (NSAttributedString *)attributedStringWithAttributes:(NSDictionary *)attributes
{
    return [[NSAttributedString alloc] initWithString:self attributes:attributes];
}

- (NSAttributedString *)attributedStringWithBuilder:(void (^)(NSTextAttributes *))block
{
    return [[NSAttributedString alloc] initWithString:self builder:block];
}

@end
