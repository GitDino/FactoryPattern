//
//  DORedView.m
//  AbstractFactoryDemo
//
//  Created by 魏欣宇 on 2018/4/8.
//  Copyright © 2018年 Dino. All rights reserved.
//

#import "DORedView.h"

@implementation DORedView

#pragma mark - Life Cycle
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        self.backgroundColor = [UIColor redColor];
    }
    return self;
}

@end
