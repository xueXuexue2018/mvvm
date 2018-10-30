//
//  ViewController.m
//  MVVVM
//
//  Created by XJL on 2018/7/7.
//  Copyright © 2018年 XJL. All rights reserved.
//

#import "ViewController.h"

#import "HWHeaderView.h"
#import "HWTableViewCell.h"
#import "HWCellViewModel.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *tableView;

@property (nonatomic, strong) HWCellViewModel *viewModel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    [self.view addSubview:self.tableView];
    self.tableView.delegate=self;
    self.tableView.dataSource=self;
    
    self.tableView.tableHeaderView=[[HWHeaderView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 100)];
//    self.tableView.tableHeaderView.backgroundColor=[UIColor redColor];
    self.viewModel = [[HWCellViewModel alloc] init];
}


#pragma mark - Table view data source
//组数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [self.viewModel numberOfSections];
}
//组中行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.viewModel numberOfItemsInSection:section];
}
//cell内容
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [self.viewModel tableView:tableView cellForRowAtIndexPath:indexPath];
}

//点击事件
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.viewModel tableView:tableView didSelectRowAtIndexPath:indexPath];
}

//设置行高
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [self.viewModel tableView:tableView heightForRowAtIndexPath:indexPath];
}
//设置头部标题
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [self.viewModel titleForHeaderInSection:section];
}

//设置尾部标题
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    return [self.viewModel titleForFooterInSection:section];
}


@end
