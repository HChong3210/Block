/*
@header  DownLoadManager.h

@abstract 该文件的一些基本描述

@project  Block

@author  Created by HChong on 16/8/11

@copyright    Copyright © 2016年 HChong. All rights reserved.

@version 1.00 __DATE_Creation
*/

#import <Foundation/Foundation.h>

typedef void(^SuccessBlock)(id obj);
typedef void(^FailBlock)(id obj);

@interface DownLoadManager : NSObject

+ (void)downLoadedSuccess:(SuccessBlock)success fail:(FailBlock)fail;

+ (void)uploadSuccess:(void(^)(id obj))success fail:(void(^)(id obj))fail;
@end
