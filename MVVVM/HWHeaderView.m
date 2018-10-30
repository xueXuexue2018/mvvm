//
//  HWHeaderView.m
//  MVVVM
//
//  Created by XJL on 2018/7/7.
//  Copyright © 2018年 XJL. All rights reserved.
//

#import "HWHeaderView.h"
@interface HWHeaderView()


@end
@implementation HWHeaderView
//重写init方法
- (id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        //创建一个标签作为头部视图
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, 100)];
        label.text = @"这是头部视图";
        label.textAlignment = NSTextAlignmentCenter;
        label.textColor = [UIColor whiteColor];
        label.backgroundColor = [UIColor grayColor];
        [self addSubview:label];
    }
    
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
