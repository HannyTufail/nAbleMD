//
//  AppDelegate.h
//  Test
//
//  Created by Imran Ali on 3/7/13.
//  Copyright (c) 2013 Imran Ali. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UITabBarController *tabBarController;

- (void)initilizeTabbarController;

@end
