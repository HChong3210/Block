//
//  SecondViewController.m
//  Block
//
//  Created by HChong on 2017/12/10.
//  Copyright © 2017年 HChong. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor colorWithRed:0.8 green:0.8 blue:0.3 alpha:1];
    
    int (^sum)(int, int);
    sum = ^int(int a, int b) {
        return a + b;
    };
    int count = sum(2, 3);
    NSLog(@"%d", count);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
