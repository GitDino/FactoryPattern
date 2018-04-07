//
//  DoRootVC.m
//  AbstractFactoryDemo
//
//  Created by 魏欣宇 on 2018/4/8.
//  Copyright © 2018年 Dino. All rights reserved.
//

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

#import "DoRootVC.h"

#import "DORedFactory.h"
#import "DOBlueFactory.h"

@interface DoRootVC ()

@end

@implementation DoRootVC

#pragma mark - Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"抽象工厂";
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    //红色视图
    UIView *red_view = [DORedFactory colorViewWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT * 0.5)];
    UILabel *red_label = [DORedFactory colorLabelWithFrame:CGRectMake(0, 64, SCREEN_WIDTH, 20)];
    [red_view addSubview:red_label];
    [self.view addSubview:red_view];
    
    
    //蓝色视图
    UIView *blue_view = [DOBlueFactory colorViewWithFrame:CGRectMake(0, SCREEN_HEIGHT * 0.5, SCREEN_WIDTH, SCREEN_HEIGHT * 0.5)];
    UILabel *blue_label = [DOBlueFactory colorLabelWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 20)];
    [blue_view addSubview:blue_label];
    [self.view addSubview:blue_view];
}

@end
