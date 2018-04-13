//
//  UIButton+XSAdditions.h
//  XSAdditionsDemo
//
//  Created by huangxuesong on 2018/1/10.
//  Copyright © 2018年 Cedar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (XSAdditions)

/**
 创建一个按钮
 
 @param title 标题
 @param color 标题颜色
 @return 按钮
 */
+ (instancetype)xs_button:(NSString *)title color:(UIColor *)color;

/**
 创建一个按钮
 
 @param title 标题
 @param color 标题颜色
 @param image 图片
 @return 按钮
 */
+ (instancetype)xs_button:(NSString *)title color:(UIColor *)color image:(UIImage *)image;

/**
 创建一个按钮
 
 @param title 标题
 @param color 标题颜色
 @param backgroundImage 背景图片
 @return 按钮
 */
+ (instancetype)xs_button:(NSString *)title color:(UIColor *)color backgroundImage:(UIImage *)backgroundImage;

/**
 创建一个按钮
 
 @param title 标题
 @param color 标题颜色
 @param image 图片
 @param backgroundImage 背景图片
 @return 按钮
 */
+ (instancetype)xs_button:(NSString *)title color:(UIColor *)color image:(UIImage *)image backgroundImage:(UIImage *)backgroundImage;

#pragma mark - setupNormal

/**
 设置默认状态按钮
 
 @param title 标题
 @param color 标题颜色
 @param image 图片
 @param backgroundImage 背景图片
 */
- (void)xs_setupNormalButton:(NSString *)title color:(UIColor *)color image:(UIImage *)image backgroundImage:(UIImage *)backgroundImage;

/**
 设置默认状态按钮
 
 @param title 标题
 @param color 标题颜色
 @param image 图片
 */
- (void)xs_setupNormalButton:(NSString *)title color:(UIColor *)color image:(UIImage *)image;

/**
 设置默认状态按钮
 
 @param title 标题
 @param color 标题颜色
 @param backgroundImage 背景图片
 */
- (void)xs_setupNormalButton:(NSString *)title color:(UIColor *)color backgroundImage:(UIImage *)backgroundImage;

/**
 设置默认状态按钮
 
 @param title 标题
 @param color 标题颜色
 */
- (void)xs_setupNormalButton:(NSString *)title color:(UIColor *)color;

#pragma mark - setupSelected

/**
 设置选中状态按钮
 
 @param title 标题
 @param color 标题颜色
 @param image 图片
 @param backgroundImage 背景图片
 */
- (void)xs_setupSelectedButton:(NSString *)title color:(UIColor *)color image:(UIImage *)image backgroundImage:(UIImage *)backgroundImage;

/**
 设置选中状态按钮
 
 @param title 标题
 @param color 标题颜色
 @param image 图片
 */
- (void)xs_setupSelectedButton:(NSString *)title color:(UIColor *)color image:(UIImage *)image;

/**
 设置选中状态按钮
 
 @param title 标题
 @param color 标题颜色
 @param backgroundImage 背景图片
 */
- (void)xs_setupSelectedButton:(NSString *)title color:(UIColor *)color backgroundImage:(UIImage *)backgroundImage;

/**
 设置选中状态按钮
 
 @param title 标题
 @param color 标题颜色
 */
- (void)xs_setupSelectedButton:(NSString *)title color:(UIColor *)color;

#pragma mark - setupHighlighted

/**
 设置高亮状态按钮
 
 @param title 标题
 @param color 标题颜色
 @param image 图片
 @param backgroundImage 背景图片
 */
- (void)xs_setupHighlightedButton:(NSString *)title color:(UIColor *)color image:(UIImage *)image backgroundImage:(UIImage *)backgroundImage;

/**
 设置高亮状态按钮
 
 @param title 标题
 @param color 标题颜色
 @param image 图片
 */
- (void)xs_setupHighlightedButton:(NSString *)title color:(UIColor *)color image:(UIImage *)image;

/**
 设置高亮状态按钮
 
 @param title 标题
 @param color 标题颜色
 @param backgroundImage 背景图片
 */
- (void)xs_setupHighlightedButton:(NSString *)title color:(UIColor *)color backgroundImage:(UIImage *)backgroundImage;

/**
 设置高亮状态按钮
 
 @param title 标题
 @param color 标题颜色
 */
- (void)xs_setupHighlightedButton:(NSString *)title color:(UIColor *)color;

@end
