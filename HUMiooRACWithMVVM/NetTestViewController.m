//
//  NetTestViewController.m
//  HUMiooRACWithMVVM
//
//  Created by 赵春生 on 2018/4/12.
//  Copyright © 2018年 HUMiooZcs. All rights reserved.
//  http://huanqiuxiaozhen.com/wemall/venues/venuesList

#import "NetTestViewController.h"
#import <AFNetworking/AFNetworking.h>
@interface NetTestViewController ()

@end

@implementation NetTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer.HTTPMethodsEncodingParametersInURI = [NSSet setWithArray:@[@"POST", @"GET", @"HEAD"]];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    [manager POST:@"http://huanqiuxiaozhen.com/wemall/venues/venuesList" parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (responseObject) {
            for (NSDictionary *dic in responseObject[@"data"]) {
                NSLog(@"%@",dic[@"name"]);
            }
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@",error);
    }];
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
