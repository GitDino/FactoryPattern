//
//  DORedLabel.m
//  AbstractFactoryDemo
//
//  Created by 魏欣宇 on 2018/4/8.
//  Copyright © 2018年 Dino. All rights reserved.
//

#import "DORedLabel.h"

@implementation DORedLabel

#pragma mark - Life Cycle
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        self.text = @"这是一个红色的Label";
    }
    return self;
}

@end
