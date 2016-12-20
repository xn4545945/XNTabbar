//
//  XNNavViewController.m
//
//  Created by neng on 14-6-20.
//  Copyright (c) 2014年 neng. All rights reserved.
//

#import "XNNavViewController.h"

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "Common.h"

@interface XNNavViewController ()

@end

@implementation XNNavViewController

/**这个方法在点击Tabbar上每个按钮时都会被调用, 因此会被被调用5次.*/
//- (void)viewDidLoad {
//	[super viewDidLoad];
//
//  LogFun;
//
//	//修改nav条的样式. (用自己的图片)
//	UINavigationBar *navBar = [UINavigationBar appearance];
//
//	//根据iOS版本设置navBar的大小. iOS6是44(不包括状态栏), iOS7是64, 包括状态栏.
//	UIImage *image = nil;
//	if (iOS7) {
//		image = [UIImage imageNamed:@"NavBar64"];
//	}
//	else {
//		image = [UIImage imageNamed:@"NavBar"];
//	}
//	[navBar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
//
//	//修改navBar字体大小文字颜色
//	NSDictionary *attris = @{ NSFontAttributeName:[UIFont systemFontOfSize:21],
//		                      NSForegroundColorAttributeName:[UIColor whiteColor] };
//	[navBar setTitleTextAttributes:attris];
//
//	//设置全局状态栏的样式,最好放在AppDelegate中
////    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent animated:YES];
//}


/**这个方法在类第一次调用时被调用, 此方法只会被调用一次. 避免浪费内存*/
+ (void)initialize {
    LogFun;
	//修改nav条的样式. (用自己的图片)
	UINavigationBar *navBar = [UINavigationBar appearance];

	//根据iOS版本设置navBar的大小. iOS6是44(不包括状态栏), iOS7是64, 包括状态栏.
	UIImage *image = nil;
	if (iOS7) {
		image = [UIImage imageNamed:@"NavBar64"];
	}
	else {
		image = [UIImage imageNamed:@"NavBar"];
	}
	[navBar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];

	//修改navBar字体大小文字颜色
	NSDictionary *attris = @{ NSFontAttributeName:[UIFont systemFontOfSize:21],
		                      NSForegroundColorAttributeName:[UIColor whiteColor] };
	[navBar setTitleTextAttributes:attris];
}

/**拦截系统的push事件,即使忘记勾选hide bottom bar on push额能在跳转时隐藏TabBar*/
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
	viewController.hidesBottomBarWhenPushed = YES;   //这个必须写在super前面, 否则跳转已经过了
	[super pushViewController:viewController animated:animated];  //要写这个,否则不跳转了
}

@end
