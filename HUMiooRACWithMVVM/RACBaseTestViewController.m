//
//  RACBaseTestViewController.m
//  HUMiooRACWithMVVM
//
//  Created by 赵春生 on 2018/4/10.
//  Copyright © 2018年 HUMiooZcs. All rights reserved.
//

#import "RACBaseTestViewController.h"

#import "RACSubjectToDelegateViewController.h"
@interface RACBaseTestViewController ()

@end

@implementation RACBaseTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self useRACSignal];
//    [self useRACSubject];
//    [self useRACReplaySubject];
    [self useRACSubjectToDelegate];
}
/**
 RACSignal使用步骤：
 1.创建信号 + (RACSignal *)createSignal:(RACDisposable * (^)(id<RACSubscriber> subscriber))didSubscribe
 2.订阅信号,才会激活信号. - (RACDisposable *)subscribeNext:(void (^)(id x))nextBlock
 3.发送信号 - (void)sendNext:(id)value
 
 RACSignal底层实现：
 1.创建信号，首先把didSubscribe保存到信号中，还不会触发。
 2.当信号被订阅，也就是调用signal的subscribeNext:nextBlock
 2.2 subscribeNext内部会创建订阅者subscriber，并且把nextBlock保存到subscriber中。
 2.1 subscribeNext内部会调用siganl的didSubscribe
 3.siganl的didSubscribe中调用[subscriber sendNext:@1];
 3.1 sendNext底层其实就是执行subscriber的nextBlock
 */
- (void)useRACSignal {
    RACSignal *racsign = [RACSignal createSignal:^RACDisposable * _Nullable(id<RACSubscriber>  _Nonnull subscriber) {
        //发送信号
        [subscriber sendNext:@1];
        // 如果不在发送数据，最好发送信号完成，内部会自动调用[RACDisposable disposable]取消订阅信号。
        [subscriber sendCompleted];
        return [RACDisposable disposableWithBlock:^{
            // block调用时刻：当信号发送完成或者发送错误，就会自动执行这个block,取消订阅信号。
            // 执行完Block后，当前信号就不在被订阅了。
            NSLog(@"信号被销毁");
        }];
    }];
    //订阅信号,才会激活信号.
    [racsign subscribeNext:^(id x) {
        // block调用时刻：每当有信号发出数据，就会调用block.
        NSLog(@"接收到数据:%@",x);
    }];
}

/**
 RACSubject使用步骤
 1.创建信号
 [RACSubject subject]，跟RACSiganl不一样，创建信号时没有block。
 2.订阅信号
 - (RACDisposable *)subscribeNext:(void (^)(id x))nextBlock
 3.发送信号
 sendNext:(id)value
 
 RACSubject:底层实现和RACSignal不一样。
 1.调用subscribeNext订阅信号，只是把订阅者保存起来，并且订阅者的nextBlock已经赋值了。
 2.调用sendNext发送信号，遍历刚刚保存的所有订阅者，一个一个调用订阅者的nextBlock。
 */
- (void)useRACSubject{
    // 1.创建信号
    RACSubject *subject = [RACSubject subject];
    // 2.订阅信号
    [subject subscribeNext:^(id x) {
        // block调用时刻：当信号发出新值，就会调用.
        NSLog(@"第一个订阅者%@",x);
    }];
    [subject subscribeNext:^(id x) {
        // block调用时刻：当信号发出新值，就会调用.
        NSLog(@"第二个订阅者%@",x);
    }];
    // 3.发送信号
    [subject sendNext:@"1"];
}

/**
 RACReplaySubject使用步骤:
 1.创建信号 [RACSubject subject]，跟RACSiganl不一样，创建信号时没有block。
 2.可以先订阅信号，也可以先发送信号。
 2.1 订阅信号 - (RACDisposable *)subscribeNext:(void (^)(id x))nextBlock
 2.2 发送信号 sendNext:(id)value
 
 RACReplaySubject:底层实现和RACSubject不一样。
 1.调用sendNext发送信号，把值保存起来，然后遍历刚刚保存的所有订阅者，一个一个调用订阅者的nextBlock。
 2.调用subscribeNext订阅信号，遍历保存的所有值，一个一个调用订阅者的nextBlock
 如果想当一个信号被订阅，就重复播放之前所有值，需要先发送信号，在订阅信号。
 也就是先保存值，在订阅值。
 */
- (void)useRACReplaySubject {
    RACReplaySubject *resubject = [RACReplaySubject subject];
    [resubject sendNext:@3];
    [resubject sendNext:@4];
    [resubject subscribeNext:^(id  _Nullable x) {
        NSLog(@"第一个订阅者接收到的数据%@",x);
    }];
    [resubject subscribeNext:^(id  _Nullable x) {
        NSLog(@"第二个订阅者接收到的数据%@",x);
    }];
}

- (void)useRACSubjectToDelegate {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"点击跳转" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [btn setFrame:CGRectMake(100, 100, 100, 60)];
    [self.view addSubview:btn];
}
//步骤三：在第一个控制器中，监听跳转按钮，给第二个控制器的代理信号赋值，并且监听.
- (void)btnClick {
    // 创建第二个控制器
    RACSubjectToDelegateViewController *twoVC = [[RACSubjectToDelegateViewController alloc] init];
    // 设置代理信号
    twoVC.delegateSignal = [RACSubject subject];
    // 订阅代理信号
    [twoVC.delegateSignal subscribeNext:^(id x) {
        NSLog(@"点击了通知按钮");
    }];
    // 跳转到第二个控制器
    [self presentViewController:twoVC animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
