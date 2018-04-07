//
//  DOColorViewGenerator.h
//  FactoryDemo
//
//  Created by 魏欣宇 on 2018/4/7.
//  Copyright © 2018年 Dino. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DOColorView;

@interface DOColorViewGenerator : NSObject

/**
 抽象方法
 */
- (DOColorView *)colorViewWithFrame:(CGRect) frame;

@end
