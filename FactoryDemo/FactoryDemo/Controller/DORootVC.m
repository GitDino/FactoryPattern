//
//  DORootVC.m
//  FactoryDemo
//
//  Created by 魏欣宇 on 2018/4/7.
//  Copyright © 2018年 Dino. All rights reserved.
//

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

#import "DORootVC.h"
#import "DORedGenerator.h"
#import "DOBlueGenerator.h"

@interface DORootVC ()

@end

@implementation DORootVC

#pragma mark - Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"工厂模式";
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    //红色视图
    DORedGenerator *red_gen = [[DORedGenerator alloc] init];
    DORedView *red_view = (DORedView *)[red_gen colorViewWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT * 0.5)];
    [self.view addSubview:red_view];
    
    //蓝色视图
    DOBlueGenerator *blue_gen = [[DOBlueGenerator alloc] init];
    DOBlueView *blue_view = (DOBlueView *)[blue_gen colorViewWithFrame:CGRectMake(0, SCREEN_HEIGHT * 0.5, SCREEN_WIDTH, SCREEN_HEIGHT * 0.5)];
    [self.view addSubview:blue_view];
}

@end
