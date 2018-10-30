//
//  HWCellViewModel.h
//  MVVVM
//
//  Created by XJL on 2018/7/7.
//  Copyright © 2018年 XJL. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>
@class HWTableViewCell, UITableView;

@interface HWCellViewModel : NSObject

@property (nonatomic, strong) NSMutableArray *HWInfoArray;

- (NSInteger)numberOfSections;
- (NSInteger)numberOfItemsInSection:(NSInteger)section;
- (NSString *)titleForHeaderInSection:(NSInteger)section;
- (NSString *)titleForFooterInSection:(NSInteger)section;
- (HWTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;

@end
