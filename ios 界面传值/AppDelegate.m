//
//  AppDelegate.m
//  ios 界面传值
//  imooc 学习笔记
// 1,属性传值 2,单例传值 3，NSUserDefaults传值 4，代理传值 5，block 传值
//  Created by dang on 2021/8/9.
//

#import "AppDelegate.h"
#import "ExampleListViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self setMainWindow];
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (void)setMainWindow{
    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    ExampleListViewController*vc = [[ExampleListViewController alloc]initWithStyle:UITableViewStylePlain];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:vc];
    self.window.rootViewController = navigationController;
    [self.window makeKeyAndVisible];
    [[UINavigationBar appearance] setBarTintColor:[UIColor orangeColor]];
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
    
    
    
}


@end
