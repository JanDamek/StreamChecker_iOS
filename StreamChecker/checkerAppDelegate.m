//
//  checkerAppDelegate.m
//  StreamChecker
//
//  Created by Jan Damek on /98/12.
//  Copyright (c) 2012 Jan Damek. All rights reserved.
//

#import "checkerAppDelegate.h"
#import "HomeViewController.h"

@implementation checkerAppDelegate

@synthesize window;
@synthesize data = _data;

+ (GADBannerView*)getBanner
{
    checkerAppDelegate *delegate = [[UIApplication sharedApplication] delegate];    
    
    GADBannerView *_banner = [[GADBannerView alloc] initWithAdSize:kGADAdSizeSmartBannerPortrait
                               ];
            if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
                _banner.adUnitID =@"a14fb5734d516b3";
            } else {
                _banner.adUnitID = @"a14fb573e1ec2cd";
            }    
    _banner.rootViewController = delegate.window.rootViewController;
    
    [_banner loadRequest:[GADRequest request]];
    
    return _banner;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    _data = [[checkerDataManager alloc] init];
    
//    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
//    self.window.backgroundColor = [UIColor whiteColor];
    
//    HomeViewController *controller = [[HomeViewController alloc] init];
//    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:controller];
//    [navigationController setNavigationBarHidden:YES animated:NO];
    
//    self.window.rootViewController = navigationController;
    
    [_data loadData];
    [_data startStreamScaner];
    
    [self.window makeKeyAndVisible];
    return YES;
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

    [_data saveData];
    
    backgroundTask = [application beginBackgroundTaskWithExpirationHandler: ^{
        dispatch_async(dispatch_get_main_queue(), ^{
                [application endBackgroundTask:backgroundTask];
                backgroundTask = UIBackgroundTaskInvalid;
        });
    }];  
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    
    [_data loadData];
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
