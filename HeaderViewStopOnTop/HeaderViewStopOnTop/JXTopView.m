//
//  JXTopView.m
//  HeaderViewStopOnTop
//
//  Created by 张盼盼 on 15/11/22.
//  Copyright © 2015年 huawei. All rights reserved.
//

#import "JXTopView.h"

@implementation JXTopView

+ (instancetype)topView {
    return [[NSBundle mainBundle] loadNibNamed:@"JXTopView" owner:nil options:nil].lastObject;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
