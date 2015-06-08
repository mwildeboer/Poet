//
//  NSString+Poet.h
//  Poet
//
//  Created by Menno Wildeboer on 08/06/15.
//  Copyright (c) 2015 Menno Wildeboer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSTextAttributes.h"

@interface NSString (Poet)

- (NSAttributedString *)attributedStringWithAttributes:(NSDictionary *)attributes;
- (NSAttributedString *)attributedStringWithBuilder:(void (^)(NSTextAttributes *attributes))block;


@end
