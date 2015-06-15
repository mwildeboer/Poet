//
//  AppDelegate.m
//  Poet
//
//  Created by Menno Wildeboer on 08/06/15.
//  Copyright (c) 2015 Menno Wildeboer. All rights reserved.
//

#import "AppDelegate.h"
#import "NSDictionary+Poet.h"
#import "ViewController.h"
#import "UIFont+ComicSans.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [[UINavigationBar appearance] setBarStyle:UIBarStyleBlack];
    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:0.13 green:0.18 blue:0.22 alpha:1]];
    [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary dictionaryWithBuilder:^(NSTextAttributes *attributes) {
        attributes.font = ComicSans(16);
        attributes.foregroundColor = [UIColor whiteColor];
    }]];
    
    ViewController *viewController = [[ViewController alloc] init];
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:viewController];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
