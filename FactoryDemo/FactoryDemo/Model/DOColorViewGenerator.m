//
//  DOColorViewGenerator.m
//  FactoryDemo
//
//  Created by 魏欣宇 on 2018/4/7.
//  Copyright © 2018年 Dino. All rights reserved.
//

#import "DOColorViewGenerator.h"
#import "DOColorView.h"

@implementation DOColorViewGenerator

/**
 抽象方法
 */
- (DOColorView *)colorViewWithFrame:(CGRect) frame
{
    return [[DOColorView alloc] initWithFrame:frame];
}

@end
