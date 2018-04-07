//
//  DORootVC.m
//  SimpleFactoryDemo
//
//  Created by 魏欣宇 on 2018/4/7.
//  Copyright © 2018年 Dino. All rights reserved.
//

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define BtnW (SCREEN_WIDTH - 60) * 0.5

#import "DORootVC.h"

#import "DOFruitsFactory.h"
#import "DOApple.h"
#import "DOBanana.h"

@interface DORootVC ()

@property (nonatomic, strong) UIButton *apple_btn;

@property (nonatomic, strong) UIButton *banana_btn;

@end

@implementation DORootVC

#pragma mark - Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"简单工厂";
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self configSubViews];
}

#pragma mark - Custom Cycle
- (void)configSubViews
{
    [self.apple_btn addTarget:self action:@selector(clickAppleAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.apple_btn];
    
    [self.banana_btn addTarget:self action:@selector(clickBananaAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.banana_btn];
}

#pragma mark - Event Cycle
- (void)clickAppleAction:(UIButton *) apple_btn
{
    DOApple *apple_model = (DOApple *)[DOFruitsFactory fruitsFactoryWithType:FruitsType_Apple];
    [apple_model introduce];
}

- (void)clickBananaAction:(UIButton *) banana_btn
{
    DOBanana *banana_model = (DOBanana *)[DOFruitsFactory fruitsFactoryWithType:FruitsType_Banana];
    [banana_model introduce];
}

#pragma mark - Getter Cycle
- (UIButton *)apple_btn
{
    if (!_apple_btn)
    {
        _apple_btn = [[UIButton alloc] initWithFrame:CGRectMake(20, 100, BtnW, 44)];
        [_apple_btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_apple_btn setTitle:@"创建一个苹果" forState:UIControlStateNormal];
    }
    return _apple_btn;
}

- (UIButton *)banana_btn
{
    if (!_banana_btn)
    {
        _banana_btn = [[UIButton alloc] initWithFrame:CGRectMake(SCREEN_WIDTH - 20 - BtnW, 100, BtnW, 44)];
        [_banana_btn setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
        [_banana_btn setTitle:@"创建一个香蕉" forState:UIControlStateNormal];
    }
    return _banana_btn;
}

@end
