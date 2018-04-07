//
//  DORedFactory.m
//  AbstractFactoryDemo
//
//  Created by 魏欣宇 on 2018/4/8.
//  Copyright © 2018年 Dino. All rights reserved.
//

#import "DORedFactory.h"

#import "DORedView.h"
#import "DORedLabel.h"

@implementation DORedFactory

+ (UIView *)colorViewWithFrame:(CGRect)frame
{
    return [[DORedView alloc] initWithFrame:frame];
}

+ (UILabel *)colorLabelWithFrame:(CGRect)frame
{
    return [[DORedLabel alloc] initWithFrame:frame];
}

@end
