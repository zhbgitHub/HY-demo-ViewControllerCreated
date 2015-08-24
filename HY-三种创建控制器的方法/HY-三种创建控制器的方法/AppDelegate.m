//
//  AppDelegate.m
//  HY-三种创建控制器的方法
//
//  Created by zhbnxm on 15/8/24.
//  Copyright (c) 2015年 恒昌利通. All rights reserved.
//

#import "AppDelegate.h"
#import "OneViewController.h"
#import "TwoViewController.h"
#import "ThreeViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    // 1. 创建控制器的方法1：（创建一个空白view的控制器）
    //    self.window.rootViewController = [[OneViewController alloc] init];
    
    // 2. 创建控制器的方法2：（代码与storyboard结合）
    //    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"TwoViewController" bundle:nil];
    //    TwoViewController *twoVc = [storyboard instantiateViewControllerWithIdentifier:@"twoVc"];
    //    self.window.rootViewController = twoVc;
    
    // 3. 创建控制器的方法3：（代码与xib结合：注意xib中只能是view）显示那个view取决于file's Owner的连线
    ThreeViewController *treeVc = [[ThreeViewController alloc] initWithNibName:@"ThreeViewController" bundle:nil];
    self.window.rootViewController = treeVc;
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
