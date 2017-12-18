//
//  SecondViewController.h
//  Block
//
//  Created by HChong on 2017/12/10.
//  Copyright © 2017年 HChong. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NSString *(^NameBlock)(NSString *inputalue);//定义一个返回值是String, 参数是String类型的block, 名字为NameBlock

@interface SecondViewController : UIViewController

- (NameBlock)nameTest;
@end
