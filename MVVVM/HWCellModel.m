//
//  HWCellModel.m
//  MVVVM
//
//  Created by XJL on 2018/7/7.
//  Copyright © 2018年 XJL. All rights reserved.
//

#import "HWCellModel.h"

@implementation HWCellModel
- (id)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    if (self) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+ (id)HWInfoWithDictionary:(NSDictionary *)dict
{
    return [[self alloc] initWithDictionary:dict];
}

@end
