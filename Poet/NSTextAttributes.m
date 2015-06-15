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
        self.ligature = 1;
        self.paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        self.shadow = [[NSShadow alloc] init];
    }
    return self;
}

- (NSDictionary *)dictionaryValue
{
    NSMutableDictionary *attributes = [[NSMutableDictionary alloc] initWithCapacity:18];
    attributes[NSBaselineOffsetAttributeName] = @(self.baselineOffset);
    attributes[NSExpansionAttributeName] = @(self.expansion);
    attributes[NSFontAttributeName] = self.font ?: [UIFont systemFontOfSize:14];
    attributes[NSForegroundColorAttributeName] = self.foregroundColor ?: [UIColor blackColor];
    attributes[NSKernAttributeName] = @(self.kern);
    attributes[NSLigatureAttributeName] = @(self.ligature);
    attributes[NSObliquenessAttributeName] = @(self.obliqueness);
    attributes[NSParagraphStyleAttributeName] = self.paragraphStyle ?: [NSParagraphStyle defaultParagraphStyle];
    attributes[NSStrikethroughColorAttributeName] = self.strikethroughColor ?: (self.foregroundColor ?: [UIColor blackColor]);
    attributes[NSStrikethroughStyleAttributeName] = @(self.strikethroughStyle);
    attributes[NSStrokeColorAttributeName] = self.strokeColor ?: (self.foregroundColor ?: [UIColor blackColor]);
    attributes[NSStrokeWidthAttributeName] = @(self.strokeWidth);
    attributes[NSUnderlineColorAttributeName] = self.underlineColor ?: (self.foregroundColor ?: [UIColor blackColor]);
    attributes[NSUnderlineStyleAttributeName] = @(self.underlineStyle);
    
    if (self.backgroundColor) {
        attributes[NSBackgroundColorAttributeName] = self.backgroundColor;
    }
    if (self.link) {
        attributes[NSLinkAttributeName] = self.link;
    }
    if (self.shadow) {
        attributes[NSShadowAttributeName] = self.shadow;
    }
    if (self.textEffect) {
        attributes[NSTextEffectAttributeName] = self.textEffect;
    }
    return attributes;
}

@end
