//
//  UIColor+XSAdditions.h
//  XSAdditionsDemo
//
//  Created by Cedar on 2017/3/7.
//  Copyright © 2017年 Cedar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (XSAdditions)

/**
 使用 16 进制数字创建颜色，例如 0xFF0000 创建红色
 
 @param hex 16 进制无符号32位整数
 */
+ (instancetype)xs_colorWithHex:(uint32_t)hex;

/**
 生成随机颜色
 */
+ (instancetype)xs_randomColor;

/**
 使用 R / G / B 数值创建颜色
 */
+ (instancetype)xs_colorWithRed:(uint8_t)red green:(uint8_t)green blue:(uint8_t)blue;

@end
