//
//  HWCellViewModel.m
//  MVVVM
//
//  Created by XJL on 2018/7/7.
//  Copyright © 2018年 XJL. All rights reserved.
//

#import "HWCellViewModel.h"
#import "HWCellModel.h"
#import "HWTableViewCell.h"
@implementation HWCellViewModel
- (NSMutableArray *)HWInfoArray
{
    if (_HWInfoArray == nil) {
        _HWInfoArray = [NSMutableArray array];
    }
    return _HWInfoArray;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self getInfo];
    }
    return self;
}

- (void)getInfo
{
    //实际开发数据是网络获取到的，这里模拟给出一个数据
    NSArray *array = @[@[@{@"image" : @"hero", @"title" : @"标题1", @"subTitle" : @"副标题1"},
                         @{@"image" : @"hero", @"title" : @"标题2", @"subTitle" : @"副标题2"}],
                       @[@{@"image" : @"hero", @"title" : @"标题3", @"subTitle" : @"副标题3"},
                         @{@"image" : @"hero", @"title" : @"标题4", @"subTitle" : @"副标题4"},
                         @{@"image" : @"hero", @"title" : @"标题5", @"subTitle" : @"副标题5"},
                         @{@"image" : @"hero", @"title" : @"标题6", @"subTitle" : @"副标题6"},
                         @{@"image" : @"hero", @"title" : @"标题7", @"subTitle" : @"副标题7"}]];
    
    //解析数据，转模型保存
    for (int i = 0; i < array.count; i++) {
        NSMutableArray *tempArray = [NSMutableArray array];
        for (NSDictionary *dict in array[i]) {
            [tempArray addObject:[HWCellModel HWInfoWithDictionary:dict]];
        }
        [self.HWInfoArray addObject:tempArray];
    }
}

- (NSInteger)numberOfSections
{
    return self.HWInfoArray.count;
}

- (NSInteger)numberOfItemsInSection:(NSInteger)section
{
    return [self.HWInfoArray[section] count];
}

- (HWTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    HWTableViewCell *cell = [HWTableViewCell cellWIthTableView:tableView];
    
    cell.model = self.HWInfoArray[indexPath.section][indexPath.row];
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //获取到当前被点击的cell
    HWTableViewCell *cell = (HWTableViewCell *)[tableView cellForRowAtIndexPath:indexPath];
    
    NSString *str = [NSString stringWithFormat:@"点击了第%ld组第%ld行", indexPath.section, indexPath.row];
    
    cell.lable.text = str;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70.0f;
}

- (NSString *)titleForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return @"第一组";
    }
    return @"第二组";
}

- (NSString *)titleForFooterInSection:(NSInteger)section
{
    return @"这是尾部标题";
}

@end
