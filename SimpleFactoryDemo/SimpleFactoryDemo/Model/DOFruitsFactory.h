//
//  DOFruitsFactory.h
//  SimpleFactoryDemo
//
//  Created by 魏欣宇 on 2018/4/7.
//  Copyright © 2018年 Dino. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DOApple.h"
#import "DOBanana.h"

typedef NS_ENUM(NSInteger) {
    FruitsType_Apple = 0,
    FruitsType_Banana
}FruitsType;

@interface DOFruitsFactory : NSObject

/**
 工厂方法

 @param fruits_type 水果类型
 */
+ (DOFruits *)fruitsFactoryWithType:(FruitsType) fruits_type;

@end
