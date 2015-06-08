//
//  NSTextAttributes.h
//  Poet
//
//  Created by Menno Wildeboer on 08/06/15.
//  Copyright (c) 2015 Menno Wildeboer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSTextAttributes : NSObject

@property (nonatomic, strong) UIFont                  *font;
@property (nonatomic, strong) NSNumber                *expansion;
@property (nonatomic, strong) UIColor                 *foregroundColor;
@property (nonatomic, strong) NSNumber                *kern;
@property (nonatomic, strong) NSMutableParagraphStyle *paragraphStyle;
@property (nonatomic, strong) NSShadow                *shadow;

- (NSDictionary *)dictionaryValue;

@end
