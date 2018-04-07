//
//  DORedView.m
//  FactoryDemo
//
//  Created by 魏欣宇 on 2018/4/7.
//  Copyright © 2018年 Dino. All rights reserved.
//

#import "DORedView.h"

@interface DORedView ()

@property (nonatomic, strong) UILabel *prompt_label;

@end

@implementation DORedView

#pragma mark - Life Cycle
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        self.backgroundColor = [UIColor redColor];
        
        [self addSubview:self.prompt_label];
    }
    return self;
}

#pragma mark - Getter Cycle
- (UILabel *)prompt_label
{
    if (!_prompt_label)
    {
        _prompt_label = [[UILabel alloc] initWithFrame:CGRectMake(0, 64, 200, 20)];
        _prompt_label.text = @"这是一个红色的视图";
    }
    return _prompt_label;
}

@end
