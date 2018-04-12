//
//  RACSubjectToDelegateViewController.m
//  HUMiooRACWithMVVM
//
//  Created by 赵春生 on 2018/4/10.
//  Copyright © 2018年 HUMiooZcs. All rights reserved.
//

#import "RACSubjectToDelegateViewController.h"

@interface RACSubjectToDelegateViewController ()

@end

@implementation RACSubjectToDelegateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"点击发送" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [btn setFrame:CGRectMake(100, 100, 100, 60)];
    [self.view addSubview:btn];
}
//步骤二：监听第二个控制器按钮点击
- (void)btnClick {
    // 通知第一个控制器，告诉它，按钮被点了
    
    // 通知代理
    // 判断代理信号是否有值
    if (self.delegateSignal) {
        // 有值，才需要通知
        [self.delegateSignal sendNext:nil];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
