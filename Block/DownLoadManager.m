/*
@header  DownLoadManager.m

@abstract 该文件的一些基本描述

@project  Block

@author  Created by HChong on 16/8/11

@copyright    Copyright © 2016年 HChong. All rights reserved.

@version 1.00 __DATE_Creation
*/

#import "DownLoadManager.h"

@implementation DownLoadManager

+ (void)downLoadedSuccess:(SuccessBlock)success fail:(FailBlock)fail {
    //使用延迟来模拟异步数据请求
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        success(@"我是数据");
    });
}

+ (void)uploadSuccess:(void(^)(id obj))success fail:(void(^)(id obj))fail {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        success(@"我是数据");
    });
}
@end
