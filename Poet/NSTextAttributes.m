//
//  NSTextAttributes.m
//  Poet
//
//  Created by Menno Wildeboer on 08/06/15.
//  Copyright (c) 2015 Menno Wildeboer. All rights reserved.
//

#import "NSTextAttributes.h"

@implementation NSTextAttributes

- (id)init
{
    self = [super init];
    if (self)
    {
        self.paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        self.shadow = [[NSShadow alloc] init];
    }
    return self;
}

- (NSDictionary *)dictionaryValue
{
    return @{
        NSFontAttributeName            : self.font ?: [UIFont systemFontOfSize:14],
        NSForegroundColorAttributeName : self.foregroundColor ?: [UIColor blackColor],
        NSParagraphStyleAttributeName  : self.paragraphStyle ?: [NSParagraphStyle defaultParagraphStyle],
        NSShadowAttributeName          : self.shadow ?: [[NSShadow alloc] init],
        NSKernAttributeName            : self.kern ?: @0,
        NSExpansionAttributeName       : self.expansion ?: @0,
    };
}

@end
