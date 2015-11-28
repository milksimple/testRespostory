//
//  JXHeaderView.m
//  HeaderViewStopOnTop
//
//  Created by 张盼盼 on 15/11/22.
//  Copyright © 2015年 huawei. All rights reserved.
//

#import "JXHeaderView.h"
#import "UIView+Extension.h"

@interface JXHeaderView()

@end

@implementation JXHeaderView


- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor lightGrayColor];
        self.alpha = 0.6;
        [self setupButton];
    }
    return self;
}


- (void)setupButton {
    [self addButtonWithTitle:@"最新" image:@"album"];
    
    [self addButtonWithTitle:@"推荐" image:@"card"];
    
    [self addButtonWithTitle:@"信使" image:@"collect"];
    
    [self addButtonWithTitle:@"十点正" image:@"pay"];
}

- (void)addButtonWithTitle:(NSString *)title image:(NSString *)image {
    UIButton *button = [[UIButton alloc] init];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:[UIColor purpleColor] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [self addSubview:button];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    NSUInteger count = self.subviews.count;
    CGFloat buttonY = 0;
    CGFloat buttonW = self.width / count;
    CGFloat buttonH = self.height;
    for (int i = 0; i < count; i ++) {
        CGFloat buttonX = buttonW * i;
        UIButton *button = self.subviews[i];
        button.frame = CGRectMake(buttonX, buttonY, buttonW, buttonH);
    }
}

@end
