//
//  AppDelegate.m
//  Test
//
//  Created by Imran Ali on 3/7/13.
//  Copyright (c) 2013 Imran Ali. All rights reserved.
//

#import "AppDelegate.h"

#import "LoginViewController.h"
#import "SearchViewController.h"

#import "ScheduleViewController.h"
#import "MessagesViewController.h"
#import "LabsViewController.h"
#import "PrescriptionViewController.h"
#import "SettingsViewController.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [_tabBarController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    
    LoginViewController *loginViewController = [[LoginViewController alloc] initWithNibName:@"LoginViewController" bundle:nil];
    
    self.window.rootViewController = loginViewController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)initilizeTabbarController
{
    SearchViewController *searchViewController = [[[SearchViewController alloc] initWithNibName:@"SearchViewController" bundle:nil] autorelease];
    ScheduleViewController *scheduleViewController = [[[ScheduleViewController alloc] initWithNibName:@"ScheduleViewController" bundle:nil] autorelease];
    MessagesViewController *messagesViewController = [[[MessagesViewController alloc] initWithNibName:@"MessagesViewController" bundle:nil] autorelease];
    LabsViewController *labsViewController = [[[LabsViewController alloc] initWithNibName:@"LabsViewController" bundle:nil] autorelease];
    PrescriptionViewController *prescriptionViewController = [[[PrescriptionViewController alloc] initWithNibName:@"PrescriptionViewController" bundle:nil] autorelease];
    SettingsViewController *settingsViewController = [[[SettingsViewController alloc] initWithNibName:@"SettingsViewController" bundle:nil] autorelease];
    
    self.tabBarController = [[[UITabBarController alloc] init] autorelease];
    
    
    
    self.tabBarController.viewControllers = @[searchViewController, scheduleViewController, messagesViewController, labsViewController, prescriptionViewController, settingsViewController];
    
    [[self.tabBarController.tabBar.items objectAtIndex:0] setTitle:NSLocalizedString(@"Schedule", @"comment")];
    [[self.tabBarController.tabBar.items objectAtIndex:1] setTitle:NSLocalizedString(@"History", @"comment")];
    [[self.tabBarController.tabBar.items objectAtIndex:2] setTitle:NSLocalizedString(@"Exam", @"comment")];
    [[self.tabBarController.tabBar.items objectAtIndex:3] setTitle:NSLocalizedString(@"Dx/Plan", @"comment")];
    [[self.tabBarController.tabBar.items objectAtIndex:4] setTitle:NSLocalizedString(@"Summary", @"comment")];
    [[self.tabBarController.tabBar.items objectAtIndex:5] setTitle:NSLocalizedString(@"Labs", @"comment")];
//    [[self.tabBarController.tabBar.items objectAtIndex:6] setTitle:NSLocalizedString(@"Notes", @"comment")];
//    [[self.tabBarController.tabBar.items objectAtIndex:7] setTitle:NSLocalizedString(@"Education", @"comment")];

    self.tabBarController.selectedIndex = 1;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
}
*/

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed
{
}
*/

@end
