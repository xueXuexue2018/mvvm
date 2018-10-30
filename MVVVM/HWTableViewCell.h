//
//  HWTableViewCell.h
//  MVVVM
//
//  Created by XJL on 2018/7/7.
//  Copyright © 2018年 XJL. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "HWCellModel.h"
@interface HWTableViewCell : UITableViewCell

@property (nonatomic, weak) UILabel *lable;
@property (nonatomic, strong) HWCellModel *model;

+ (instancetype)cellWIthTableView:(UITableView *)tableView;

@end
