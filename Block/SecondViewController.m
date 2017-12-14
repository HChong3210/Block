//
//  SecondViewController.m
//  Block
//
//  Created by HChong on 2017/12/10.
//  Copyright © 2017年 HChong. All rights reserved.
//

#import "SecondViewController.h"

typedef int(^Sum)(int, int);//定义一个Sum类型的block

@interface SecondViewController ()

//@property (nonatomic, copy) Sum sum;
@property (nonatomic, copy) int (^sum)(int a, int b);
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor colorWithRed:0.8 green:0.8 blue:0.3 alpha:1];
    
    [self test1];
    [self test2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//block作为变量
- (void)test1 {
    int (^sum)(int, int);
    sum = ^int(int a, int b) {
        return a + b;
    };
    int count = sum(2, 3);
    NSLog(@"%d", count);
}

//block作为属性
- (void)test2 {
    self.sum = ^int(int a, int b) {
        return a + b;
    };
    NSLog(@"%d", self.sum(3, 4));
}

@end
