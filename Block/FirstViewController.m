/*
@header  FirstViewController.m

@abstract 该文件的一些基本描述

@project  Block

@author  Created by HChong on 16/8/10

@copyright    Copyright © 2016年 HChong. All rights reserved.

@version 1.00 __DATE_Creation
*/

#import "FirstViewController.h"
#import "DownLoadManager.h"

@interface FirstViewController()

@property (nonatomic, strong) UITextField *textField;
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:0.0 green:0.502 blue:0.502 alpha:1.0];
    
    self.textField = [[UITextField alloc] initWithFrame:CGRectMake(100, 200, 200, 30)];
    self.textField.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.textField];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 400, 100, 60);
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"返回" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor whiteColor];
    button.titleLabel.font = [UIFont systemFontOfSize:12];
    [self.view addSubview:button];
    [self httpRequest];
}

- (void)httpRequest {
    [DownLoadManager downLoadedSuccess:^(id obj) {
        NSLog(@"%@", obj);
    } fail:^(id obj) {
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)buttonAction:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
    //5.block调用
    self.getInPutTextBlock(self.textField.text);
}

//4.实现方法
- (void)func:(GetInPutText)getTextBlock {
    self.getInPutTextBlock = getTextBlock;
}

//block实现
- (void)getTextFieldTextSuccess:(SuccessBlock)success fail:(FailBlock)fail{
    if (self.textField.text.length % 2 == 0) {
        success([NSString stringWithFormat:@"输入的文字个数是偶数%@", self.textField.text]);
    } else {
        fail([NSString stringWithFormat:@"输入的文字个数是奇数%@", self.textField.text]);
    }
}

@end
