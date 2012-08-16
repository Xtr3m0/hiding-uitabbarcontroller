//
//  DRAppDelegate.m
//  hidingTabBarController
//
//  Created by Daniel Rueda Jimenez on 8/16/12.
//  Copyright (c) 2012 Planet Media. All rights reserved.
//

#import "DRAppDelegate.h"

@implementation DRAppDelegate

@synthesize window = _window;

- (void)hideUITabBarController:(UITabBarController *)tabBarController
{
    CGRect screenRect = [tabBarController.view bounds];
    if (UIInterfaceOrientationIsLandscape([[UIApplication sharedApplication] statusBarOrientation])){
        screenRect = CGRectMake(screenRect.origin.x, screenRect.origin.y, screenRect.size.height, screenRect.size.width);
    }
    
    for(UIView *view in tabBarController.view.subviews)
    {
        CGPoint newOrigin;
        CGSize newSize;
        if([view isKindOfClass:[UITabBar class]]){
            newOrigin = CGPointMake(view.frame.origin.x, screenRect.size.height);
            newSize = CGSizeMake(view.frame.size.width, view.frame.size.height);
        }else{
            newOrigin = CGPointMake(view.frame.origin.x, view.frame.origin.y);
            newSize = CGSizeMake(view.frame.size.width, screenRect.size.height);
        }
        CGRect newFrame = CGRectMake(newOrigin.x, newOrigin.y, newSize.width, newSize.height);
        [view setFrame:newFrame];
    }
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController;
    [UIView animateWithDuration:5 animations:^{
        [self hideUITabBarController:tabBarController];
    }];
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

@end
