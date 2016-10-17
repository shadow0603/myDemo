//
//  AppDelegate.m
//  testGif
//
//  Created by 李海龙 on 15/12/8.
//  Copyright (c) 2015年 happigo. All rights reserved.
//

#import "AppDelegate.h"
//#import "DetailViewController.h"

@interface AppDelegate () <UISplitViewControllerDelegate>

@end

@implementation AppDelegate
@synthesize lunchView;
- (BOOL)application:(UIApplication *)application willFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    lunchView = [[NSBundle mainBundle ]loadNibNamed:@"LaunchScreen" owner:nil options:nil][0];
    lunchView.frame = CGRectMake(0, 0, self.window.screen.bounds.size.width, self.window.screen.bounds.size.height);
    [self.window addSubview:lunchView];
    UIImageView *imageV = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.window.screen.bounds.size.width, self.window.screen.bounds.size.height)];
    imageV.image = [UIImage imageNamed:@"test.gif"];
    [lunchView addSubview:imageV];
    lunchView.backgroundColor = [UIColor redColor];
    [self.window bringSubviewToFront:lunchView];
    [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(removeLun) userInfo:nil repeats:NO];
    // Override point for customization after application launch.
    return YES;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//
    // Override point for customization after application launch.
    return YES;
}
-(void)removeLun {
    [lunchView removeFromSuperview];
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
