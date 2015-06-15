//
//  UIFont+ComicSans.h
//  Poet
//
//  Created by Menno Wildeboer on 15/06/15.
//  Copyright (c) 2015 Menno Wildeboer. All rights reserved.
//

#import <UIKit/UIKit.h>

#define ComicSans(_size_) [UIFont ComicSans:_size_]
#define ComicSansBold(_size_) [UIFont ComicSansBold:_size_]

@interface UIFont (ComicSans)

+ (instancetype)ComicSans:(CGFloat)fontSize;
+ (instancetype)ComicSansBold:(CGFloat)fontSize;

@end
