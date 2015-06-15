//
//  ViewController.m
//  Poet
//
//  Created by Menno Wildeboer on 08/06/15.
//  Copyright (c) 2015 Menno Wildeboer. All rights reserved.
//

#import "ViewController.h"
#import "NSAttributedString+Poet.h"
#import "UIFont+ComicSans.h"

@interface ViewController ()

@property (nonatomic, strong) UIImageView *backgroundView;

@property (nonatomic, strong) UILabel *labelA;
@property (nonatomic, strong) UILabel *labelB;
@property (nonatomic, strong) UILabel *labelC;
@property (nonatomic, strong) UILabel *labelD;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.title = @"Wow";
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Doge"]];
    [self.view addSubview:self.backgroundView];
    
    
    NSAttributedString *string = [[NSAttributedString alloc] initWithString:@"Hello World" builder:^(NSTextAttributes *attributes)
    {
        attributes.font = [UIFont systemFontOfSize:16];
        attributes.foregroundColor = [UIColor blueColor];
        attributes.paragraphStyle.alignment = NSTextAlignmentCenter;
        attributes.paragraphStyle.lineSpacing = 2.0;
    }];
    
    self.labelA = [[UILabel alloc] initWithFrame:CGRectZero];
    self.labelA.attributedText = [[NSAttributedString alloc] initWithString:@"Such text" builder:^(NSTextAttributes *attributes)
    {
        attributes.font = ComicSansBold(21);
        attributes.foregroundColor = [UIColor colorWithRed:0.94 green:0.14 blue:0.89 alpha:1];
    }];
    [self.view addSubview:self.labelA];
    
    self.labelB = [[UILabel alloc] initWithFrame:CGRectZero];
    self.labelB.attributedText = [[NSAttributedString alloc] initWithString:@"Many kern" builder:^(NSTextAttributes *attributes)
    {
        attributes.font = ComicSansBold(20);
        attributes.foregroundColor = [UIColor colorWithRed:0.35 green:0.96 blue:0.43 alpha:1];
        attributes.kern = 4.0;
        attributes.shadow.shadowBlurRadius = 4;
        attributes.shadow.shadowOffset = CGSizeMake(0, 0);
        attributes.shadow.shadowColor = [UIColor colorWithRed:0.62 green:1 blue:0.67 alpha:1];
    }];
    [self.view addSubview:self.labelB];
    
    self.labelC = [[UILabel alloc] initWithFrame:CGRectZero];
    self.labelC.attributedText = [[NSAttributedString alloc] initWithString:@"Very styles" builder:^(NSTextAttributes *attributes)
    {
        attributes.backgroundColor = [UIColor colorWithRed:0.95 green:0.89 blue:0.33 alpha:1];
        attributes.font = ComicSans(21);
        attributes.foregroundColor = [UIColor colorWithRed:0.84 green:0.59 blue:0.36 alpha:1];
        attributes.underlineColor = [UIColor redColor];
        attributes.underlineStyle = NSUnderlineStyleSingle;
    }];
    [self.view addSubview:self.labelC];

    self.labelD = [[UILabel alloc] initWithFrame:CGRectZero];
    self.labelD.numberOfLines = 4;
    self.labelD.attributedText = [[NSAttributedString alloc] initWithString:@"How multiline, so boss" builder:^(NSTextAttributes *attributes)
    {
        attributes.font = ComicSans(18);
        attributes.paragraphStyle.alignment = NSTextAlignmentCenter;
        attributes.paragraphStyle.lineSpacing = 6.0;
        attributes.strokeColor = [UIColor blueColor];
        attributes.strokeWidth = 3.0;
    }];
    [self.view addSubview:self.labelD];
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    
    [self.backgroundView setCenter:self.view.center];
    
    [self.labelA sizeToFit];
    [self.labelA setFrame:CGRectMake(30, 80, CGRectGetWidth(self.labelA.bounds), CGRectGetHeight(self.labelA.bounds))];
    
    [self.labelB sizeToFit];
    [self.labelB setFrame:CGRectMake(CGRectGetWidth(self.view.bounds) - CGRectGetWidth(self.labelB.bounds) - 20, 120, CGRectGetWidth(self.labelB.bounds), CGRectGetHeight(self.labelB.bounds))];

    [self.labelC sizeToFit];
    [self.labelC setFrame:CGRectMake(40, CGRectGetHeight(self.view.bounds) - 150, CGRectGetWidth(self.labelC.bounds), CGRectGetHeight(self.labelC.bounds))];
   
    [self.labelD setFrame:CGRectMake(CGRectGetMidX(self.view.bounds) + 40, CGRectGetHeight(self.view.bounds) - 180, 100, 200)];
}

@end
