//
//  AppDelegate.m
//  Sample
//
//  Created by Abdullah Selek on 26/04/2017.
//  Copyright © 2017 Abdullah Selek. All rights reserved.
//

#import "AppDelegate.h"
#import "ToDoViewController.h"
#import "ToDoRouter.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self createToDoView];
    return YES;
}

- (void)createToDoView {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    ToDoViewController *todoViewController = (ToDoViewController *) [ToDoRouter createModule];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:todoViewController];
    self.window.rootViewController = navigationController;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
}

@end
