//
//  AppDelegate.m
//  iVersionDemo
//
//  Created by LiHaozhen on 15/5/4.
//  Copyright (c) 2015年 LiHaozhen. All rights reserved.
//

#import "AppDelegate.h"
#import "iVersion.h"
#import "iVersionDelegate.h"


@interface AppDelegate ()

@property (strong, nonatomic) iVersionDelegate *versionDelegate;
@end

@implementation AppDelegate

+ (void)initialize
{
    
//    [iVersion sharedInstance].applicationBundleID = @"com.tencent.xin"; //指定特定App的 BundleID

    [iVersion sharedInstance].appStoreCountry = @"cn";//指定国家，若不设置，可能会显示英文
    
    //configure iVersion. These paths are optional - if you don't set
    //them, iVersion will just get the release notes from iTunes directly (if your app is on the store)
//    [iVersion sharedInstance].remoteVersionsPlistURL = @"http://charcoaldesign.co.uk/iVersion/versions.plist";
//    [iVersion sharedInstance].localVersionsPlistPath = @"versions.plist";
}

- (BOOL)application:(UIApplication *)application
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.versionDelegate = [[iVersionDelegate alloc] init];
    [[iVersion sharedInstance] setDelegate:self.versionDelegate];
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
