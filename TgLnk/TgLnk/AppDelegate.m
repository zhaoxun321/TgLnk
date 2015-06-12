//
//  AppDelegate.m
//  TgLnk
//
//  Created by shepard zhao on 28/03/2015.
//  Copyright (c) 2015 com.xunzhao. All rights reserved.
//

#import "AppDelegate.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  // Override point for customization after application launch.
  [self appInitalSetting];

  // facebook
  return [[FBSDKApplicationDelegate sharedInstance] application:application
                                  didFinishLaunchingWithOptions:launchOptions];

  return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
  // Sent when the application is about to move from active to inactive state.
  // This can occur for certain types of temporary interruptions (such as an
  // incoming phone call or SMS message) or when the user quits the application
  // and it begins the transition to the background state.
  // Use this method to pause ongoing tasks, disable timers, and throttle down
  // OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
  // Use this method to release shared resources, save user data, invalidate
  // timers, and store enough application state information to restore your
  // application to its current state in case it is terminated later.
  // If your application supports background execution, this method is called
  // instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
  // Called as part of the transition from the background to the inactive state;
  // here you can undo many of the changes made on entering the background.
}

- (BOOL)application:(UIApplication *)application
              openURL:(NSURL *)url
    sourceApplication:(NSString *)sourceApplication
           annotation:(id)annotation {
  return
      [[FBSDKApplicationDelegate sharedInstance] application:application
                                                     openURL:url
                                           sourceApplication:sourceApplication
                                                  annotation:annotation];
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
  // Restart any tasks that were paused (or not yet started) while the
  // application was inactive. If the application was previously in the
  // background, optionally refresh the user interface.
  [FBSDKAppEvents activateApp];
}

- (void)applicationWillTerminate:(UIApplication *)application {
  // Called when the application is about to terminate. Save data if
  // appropriate. See also applicationDidEnterBackground:.
}


- (void)appInitalSetting {
  // nav
  [[UINavigationBar appearance] setBarTintColor:RGB2UICOLOR(90, 200, 250, 1.0)];
  [[UINavigationBar appearance]
      setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                               [UIColor whiteColor],
                                               NSForegroundColorAttributeName,
                                               nil, NSFontAttributeName, nil]];

  [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    
   
    
  // tab bar
  [[UIBarButtonItem appearanceWhenContainedIn:[UINavigationBar class], nil]
      setTitleTextAttributes:@{
        NSForegroundColorAttributeName : [UIColor whiteColor]
      } forState:UIControlStateNormal];

    [[UITabBar appearance] setTintColor:RGB2UICOLOR(52, 152, 219, 1.0)];
  [[UITabBar appearance] setBarTintColor:RGB2UICOLOR(255, 255, 255, 0.5)];

    
    UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController;
    UITabBar *tabBar = tabBarController.tabBar;
    
    // repeat for every tab, but increment the index each time
    UITabBarItem *firstTab = [tabBar.items objectAtIndex:0];
    UITabBarItem *secondTab = [tabBar.items objectAtIndex:1];
    UITabBarItem *thirdTab = [tabBar.items objectAtIndex:2];
    UITabBarItem *forthTab = [tabBar.items objectAtIndex:3];

    // also repeat for every tab
    firstTab.selectedImage = [[UIImage imageNamed:@"tabMessageImageFilled"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    secondTab.selectedImage = [[UIImage imageNamed:@"tabBoardImageFilled"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    thirdTab.selectedImage = [[UIImage imageNamed:@"tabContactImageFilled"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    forthTab.selectedImage = [[UIImage imageNamed:@"tabSettingImageFilled"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

  // keyboard dark mode
  [[UITextField appearance] setKeyboardAppearance:UIKeyboardAppearanceDark];

  // status bar
  [[UIApplication sharedApplication]
      setStatusBarStyle:UIStatusBarStyleLightContent];
}

@end
