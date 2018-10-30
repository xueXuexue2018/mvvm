//
//  HWCellModel.h
//  MVVVM
//
//  Created by XJL on 2018/7/7.
//  Copyright © 2018年 XJL. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HWCellModel : NSObject
@property (nonatomic, copy) NSString *image;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *subTitle;

- (id)initWithDictionary:(NSDictionary *)dict;
+ (id)HWInfoWithDictionary:(NSDictionary *)dict;
@end
