//
//  XHColorLabel.h
//  XHColorLabel
//
//  Created by 邢浩 on 2017/1/9.
//  Copyright © 2017年 邢浩. All rights reserved.
//

/** 渐变颜色的lable */
#import <UIKit/UIKit.h>

@interface XHColorLabel : UILabel
/** 创建渐变颜色label */
+ (XHColorLabel *)colorLabelWithText:(NSString *)text WithCenter:(CGPoint )makePoint;
/** 创建渐变层 */
- (CAGradientLayer *)gradientLayerWithLabel:(XHColorLabel *)colorLabel;
/** 开启渐变颜色 */
- (void)showColorLabel:(CAGradientLayer *)layer;

@end
