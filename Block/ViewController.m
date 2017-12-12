//
//  ViewController.m
//  Block
//
//  Created by HChong on 16/8/10.
//  Copyright © 2016年 HChong. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"

@interface ViewController ()

@property (nonatomic, strong) FirstViewController *firstVC;//123
@property (nonatomic, strong) UILabel *label;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:1.0 green:0.8 blue:0.4 alpha:1.0];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 100, 50);
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"确定" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor colorWithRed:0.0 green:0.502 blue:0.0 alpha:1.0];
    button.titleLabel.font = [UIFont systemFontOfSize:12];
    [self.view addSubview:button];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.frame = CGRectMake(100, 300, 100, 50);
    [button1 addTarget:self action:@selector(button1Action:) forControlEvents:UIControlEventTouchUpInside];
    [button1 setTitle:@"请求" forState:UIControlStateNormal];
    button1.backgroundColor = [UIColor colorWithRed:0.8 green:0.4 blue:1.0 alpha:1.0];
    button1.titleLabel.font = [UIFont systemFontOfSize:12];
    [self.view addSubview:button1];
    
    [self.view addSubview:self.label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)buttonAction:(id)sender {
    self.firstVC = [[FirstViewController alloc] init];
    [self.navigationController pushViewController:self.firstVC animated:YES];
    //6.取值
    [self.firstVC func:^NSString *(NSString *text) {
        self.label.text = text;
        return text;
    }];
}

- (void)button1Action:(id)sender {
    [self.firstVC getTextFieldTextSuccess:^(id obj) {
        NSLog(@"%@", obj);
    } fail:^(id obj) {
        NSLog(@"%@", obj);
    }];
}

- (UILabel *)label {
    if (!_label) {
        _label = [[UILabel alloc] initWithFrame:CGRectMake(100, 200, 200, 50)];
        _label.backgroundColor = [UIColor colorWithRed:1.0 green:0.502 blue:0.0 alpha:1.0];
    }
    return _label;
}

- (FirstViewController *)firstVC {
    if (!_firstVC) {
        _firstVC = [[FirstViewController alloc] init];
    }
    return _firstVC;
}

@end
