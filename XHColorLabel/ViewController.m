//
//  ViewController.m
//  XHColorLabel
//  
//  Created by 邢浩 on 2017/1/9.
//  Copyright © 2017年 邢浩. All rights reserved.
//

#import "ViewController.h"
#import "XHColorLabel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self addColorLabel];
}
/** 添加渐变颜色label */
- (void)addColorLabel {
    XHColorLabel * color = [XHColorLabel colorLabelWithText:@"这是一个渐变颜色的试图" WithCenter:CGPointMake(200, 100)];
    [self.view addSubview:color];
    CAGradientLayer * layer = [color gradientLayerWithLabel:color];
    [self.view.layer addSublayer:layer];
    layer.mask = color.layer;
    color.frame = layer.bounds;
    [color showColorLabel:layer];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
