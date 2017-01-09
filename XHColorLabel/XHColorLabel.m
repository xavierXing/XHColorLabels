//
//  XHColorLabel.m
//  XHColorLabel
//
//  Created by 邢浩 on 2017/1/9.
//  Copyright © 2017年 邢浩. All rights reserved.
//

#import "XHColorLabel.h"
@interface XHColorLabel () {
    CAGradientLayer * _layer;
}

@end

@implementation XHColorLabel

+ (XHColorLabel *)colorLabelWithText:(NSString *)text WithCenter:(CGPoint)makePoint {
    XHColorLabel * colorLB = [[XHColorLabel alloc] init];
    colorLB.text = text;
    [colorLB sizeToFit];
    colorLB.center = CGPointMake(makePoint.x, makePoint.y);
    return colorLB;
}

- (CAGradientLayer *)gradientLayerWithLabel:(XHColorLabel *)colorLabel {
    CAGradientLayer * gradientLayer = [CAGradientLayer layer];/** CAGradientLayer处理渐变颜色类 */
    gradientLayer.frame = colorLabel.frame;
    gradientLayer.colors = @[(id)[self randomColor].CGColor,(id)[self randomColor].CGColor,(id)[self randomColor].CGColor];
    return gradientLayer;
}

- (void)showColorLabel:(CAGradientLayer *)layer {
    _layer = layer;
    CADisplayLink * link = [CADisplayLink displayLinkWithTarget:self selector:@selector(timerChangeColor)];
    [link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSDefaultRunLoopMode];
}
#pragma mark -private
/** 随机颜色action */
- (UIColor *)randomColor {
    CGFloat red = arc4random_uniform(256) / 255.0;
    CGFloat green = arc4random_uniform(256) / 255.0;
    CGFloat blue = arc4random_uniform(256) / 255.0;
    return [UIColor colorWithRed:red green:green blue:blue alpha:1];
}
/** 定时改变lable的字体颜色 */
- (void)timerChangeColor{
    _layer.colors = @[(id)[self randomColor].CGColor,(id)[self randomColor].CGColor,(id)[self randomColor].CGColor];
}
@end
