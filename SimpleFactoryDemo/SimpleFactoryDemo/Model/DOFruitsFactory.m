//
//  DOFruitsFactory.m
//  SimpleFactoryDemo
//
//  Created by 魏欣宇 on 2018/4/7.
//  Copyright © 2018年 Dino. All rights reserved.
//

#import "DOFruitsFactory.h"

@implementation DOFruitsFactory

/**
 工厂方法
 
 @param fruits_type 水果类型
 */
+ (DOFruits *)fruitsFactoryWithType:(FruitsType) fruits_type
{
    DOFruits *fruits_model = nil;
    
    switch (fruits_type) {
        case FruitsType_Apple:
            fruits_model = [[DOApple alloc] init];
            break;
        case FruitsType_Banana:
            fruits_model = [[DOBanana alloc] init];
            break;
            
        default:
            fruits_model = [[DOFruits alloc] init];
            break;
    }
    return fruits_model;
}

@end
