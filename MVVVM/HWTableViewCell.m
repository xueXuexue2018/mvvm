//
//  HWTableViewCell.m
//  MVVVM
//
//  Created by XJL on 2018/7/7.
//  Copyright © 2018年 XJL. All rights reserved.
//

#import "HWTableViewCell.h"



@interface HWTableViewCell ()

@property (nonatomic, weak) UIImageView *imgView;
@property (nonatomic, weak) UILabel *subLabel;

@end

@implementation HWTableViewCell

+ (instancetype)cellWIthTableView:(UITableView *)tableView
{
    //cell复用，唯一标识
    static NSString *identifier = @"HWCell";
    //先在缓存池中取
    HWTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    //缓存池中没有再创建，并添加标识，cell移出屏幕时放入缓存池以复用
    if (cell == nil) {
        cell = [[HWTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    return cell;
}

//重写init方法构建cell内容
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        //图片
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(5, 5, 80, 60)];
        [self.contentView addSubview:imageView];
        self.imgView = imageView;
        
        //标题
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(imageView.frame) + 10, 15, 200, 20)];
        label.font = [UIFont systemFontOfSize:20.0f];
        [self.contentView addSubview:label];
        self.lable = label;
        
        //副标题
        UILabel *subLabel = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(imageView.frame) + 10, 40, 200, 13)];
        subLabel.font = [UIFont systemFontOfSize:13.0f];
        [self.contentView addSubview:subLabel];
        self.subLabel = subLabel;
        
        self.backgroundColor = [UIColor whiteColor];
    }
    
    return self;
}
//重写set方法，模型传递
- (void)setModel:(HWCellModel *)model
{
    _model = model;
    
    self.imgView.image = [UIImage imageNamed:model.image];
    self.lable.text = model.title;
    self.subLabel.text = model.subTitle;
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
