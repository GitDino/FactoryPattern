//
//  DOBlueFactory.m
//  AbstractFactoryDemo
//
//  Created by 魏欣宇 on 2018/4/8.
//  Copyright © 2018年 Dino. All rights reserved.
//

#import "DOBlueFactory.h"

#import "DOBlueView.h"
#import "DOBlueLabel.h"

@implementation DOBlueFactory


+ (UIView *)colorViewWithFrame:(CGRect)frame
{
    return [[DOBlueView alloc] initWithFrame:frame];
}

+ (UILabel *)colorLabelWithFrame:(CGRect)frame
{
    return [[DOBlueLabel alloc] initWithFrame:frame];
}

@end
