//
//  UIFont+ComicSans.m
//  Poet
//
//  Created by Menno Wildeboer on 15/06/15.
//  Copyright (c) 2015 Menno Wildeboer. All rights reserved.
//

#import "UIFont+ComicSans.h"

@implementation UIFont (ComicSans)

+ (instancetype)ComicSans:(CGFloat)fontSize
{
    return [UIFont fontWithName:@"ComicSansMS" size:fontSize];
}

+ (instancetype)ComicSansBold:(CGFloat)fontSize
{
    return [UIFont fontWithName:@"ComicSansMS-Bold" size:fontSize];
}

@end
