//
//  MainViewController.m
//  HUMiooRACWithMVVM
//
//  Created by 赵春生 on 2018/4/10.
//  Copyright © 2018年 HUMiooZcs. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *mainTableView;
@property (nonatomic, strong) NSMutableArray *dataArray;
@property (nonatomic, strong) NSMutableArray *dataTitleArray;

@end

@implementation MainViewController

- (NSMutableArray *)dataArray {
    if (!_dataArray) {
        _dataArray = [NSMutableArray arrayWithObjects:@"RACBaseTest", @"NULL", nil];
    }
    return _dataArray;
}

- (NSMutableArray *)dataTitleArray {
    if (!_dataTitleArray) {
        _dataTitleArray = [NSMutableArray arrayWithObjects:@"First-RACBaseTest", @"NULL-NULL", nil];
    }
    return _dataTitleArray;
}

- (void)initTableView {
    _mainTableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    _mainTableView.backgroundColor = [UIColor whiteColor];
    _mainTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    _mainTableView.delegate = self;
    _mainTableView.dataSource = self;
    [self.view addSubview:_mainTableView];
}

- (void)initVC {
    self.title = @"Demo";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self dataArray];
    [self dataTitleArray];
    [self initVC];
    [self initTableView];
}

#pragma UITableView Delegate And DataSource
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    return [UIView new];
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    return [UIView new];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0.1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0.1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 65;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellID = @"cellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    cell.textLabel.text = _dataTitleArray[indexPath.row];
    cell.textLabel.textAlignment = NSTextAlignmentLeft;
    cell.textLabel.textColor = [HUMTool colorWithHUMToolWebStandardColor:HUMToolStandard_HotPink_FF69B4];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //通过字符串的值（类名）找到对应的类并且创建累的对象——反射
    NSString *strTitle = _dataArray[indexPath.row];
    NSString *strNew = [NSString stringWithFormat:@"%@ViewController",strTitle];
    Class c = NSClassFromString(strNew);
    UIViewController *uc = [[c alloc] init];
    [self.navigationController pushViewController:uc animated:YES];
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
