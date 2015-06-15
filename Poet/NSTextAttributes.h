//
//  NSTextAttributes.h
//  Poet
//
//  Created by Menno Wildeboer on 08/06/15.
//  Copyright (c) 2015 Menno Wildeboer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSTextAttributes : NSObject

@property (nonatomic, strong) UIColor                 *backgroundColor;
@property (nonatomic, assign) CGFloat                  baselineOffset;
@property (nonatomic, assign) CGFloat                  expansion;
@property (nonatomic, strong) UIFont                  *font;
@property (nonatomic, strong) UIColor                 *foregroundColor;
@property (nonatomic, assign) CGFloat                  kern;
@property (nonatomic, assign) NSInteger                ligature;
@property (nonatomic, strong) NSURL                   *link;
@property (nonatomic, assign) CGFloat                  obliqueness;
@property (nonatomic, strong) NSMutableParagraphStyle *paragraphStyle;
@property (nonatomic, strong) NSShadow                *shadow;
@property (nonatomic, strong) UIColor                 *strikethroughColor;
@property (nonatomic, assign) NSInteger                strikethroughStyle;
@property (nonatomic, strong) UIColor                 *strokeColor;
@property (nonatomic, assign) CGFloat                  strokeWidth;
@property (nonatomic, strong) NSString                *textEffect;
@property (nonatomic, strong) UIColor                 *underlineColor;
@property (nonatomic, assign) NSInteger                underlineStyle;

- (NSDictionary *)dictionaryValue;

@end
