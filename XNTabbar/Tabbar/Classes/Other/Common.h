//
//  Common.h
//
//  Created by neng on 14-6-19.
//  Copyright (c) 2014年 neng. All rights reserved.
//

//只在debug下才输出日志, 在程序运行时取消log
#ifdef DEBUG
#define MyLog(...)  NSLog(__VA_ARGS__)
#else
#define MyLog(...)
#endif

//调用函数
#define LogFun  MyLog(@"%s",__func__);

//输出视图的frame边界
#define LogFrame(view)  MyLog(@"%@",NSStringFromCGRect(view.frame) );

//输出所有子视图
#define LogSubviews(view)  MyLog(@"%@",view.subviews);

#define iOS7   ([UIDevice currentDevice].systemVersion.floatValue>=7.0)