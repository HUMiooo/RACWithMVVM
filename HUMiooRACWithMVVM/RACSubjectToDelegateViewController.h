//
//  RACSubjectToDelegateViewController.h
//  HUMiooRACWithMVVM
//
//  Created by 赵春生 on 2018/4/10.
//  Copyright © 2018年 HUMiooZcs. All rights reserved.
//

#import "RootViewController.h"

@interface RACSubjectToDelegateViewController : RootViewController
//步骤一：在第二个控制器.h，添加一个RACSubject代替代理。
@property (nonatomic, strong) RACSubject *delegateSignal;
@end
