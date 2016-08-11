/*
@header  FirstViewController.h

@abstract 该文件的一些基本描述

@project  Block

@author  Created by HChong on 16/8/10

@copyright    Copyright © 2016年 HChong. All rights reserved.

@version 1.00 __DATE_Creation
*/

#import <UIKit/UIKit.h>

//1.声明Block
typedef NSString *(^GetInPutText)(NSString *text);
typedef void(^SuccessBlock)(id obj);
typedef void(^FailBlock)(id obj);

@interface FirstViewController : UIViewController
//2.创建block属性
@property (nonatomic, strong) GetInPutText getInPutTextBlock;
//3.写block实现方法, 方便调用
- (void)func:(GetInPutText)getTextBlock;
- (void)getTextFieldTextSuccess:(SuccessBlock)success fail:(FailBlock)fail;
@end
