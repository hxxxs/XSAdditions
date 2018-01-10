//
//  UILabel+XSAdditions.h
//  XSAdditionsDemo
//
//  Created by Cedar on 2017/3/7.
//  Copyright © 2017年 Cedar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (XSAdditions)

/**
 构造函数
 
 @param text 文本
 @param fontSize 文本大小
 @param color 文本颜色
 @return 文本标签
 */
+ (instancetype)xs_labelWithText:(NSString *)text fontSize:(CGFloat)fontSize color:(UIColor *)color;

/**
 构造函数
 
 @param text 文本
 @param fontSize 文本大小
 @param color 文本颜色
 @param numberOfLines 文本行数
 @return 文本标签
 */
+ (instancetype)xs_labelWithText:(NSString *)text fontSize:(CGFloat)fontSize color:(UIColor *)color numberOfLines:(NSInteger)numberOfLines;

/**
 构造函数
 
 @param text 文本
 @param fontSize 文本大小
 @param color 文本颜色
 @param textAlignment 文本对齐方式
 @return 文本标签
 */
+ (instancetype)xs_labelWithText:(NSString *)text fontSize:(CGFloat)fontSize color:(UIColor *)color textAlignment:(NSTextAlignment)textAlignment;

/**
 构造函数
 
 @param text 文本
 @param fontSize 文本大小
 @param color 文本颜色
 @param textAlignment 文本对齐方式
 @param numberOfLines 文本行数
 @return 文本标签
 */
+ (instancetype)xs_labelWithText:(NSString *)text fontSize:(CGFloat)fontSize color:(UIColor *)color textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)numberOfLines;

#pragma mark - setup

/**
 设置标签
 
 @param text 文本
 @param fontSize 文本大小
 @param textColor 文本颜色
 @param textAlignment 文本对齐方式
 @param numberOfLines 文本行数
 */
- (void)xs_setupLabel:(NSString *)text fontSize:(CGFloat)fontSize textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)numberOfLines;

/**
 设置标签
 
 @param text 文本
 @param fontSize 文本大小
 @param textColor 文本颜色
 @param textAlignment 文本对齐方式
 */
- (void)xs_setupLabel:(NSString *)text fontSize:(CGFloat)fontSize textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment;

/**
 设置标签
 
 @param text 文本
 @param fontSize 文本大小
 @param textAlignment 文本对齐方式
 @param numberOfLines 文本行数
 */
- (void)xs_setupLabel:(NSString *)text fontSize:(CGFloat)fontSize textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)numberOfLines;

/**
 设置标签
 
 @param text 文本
 @param fontSize 文本大小
 @param textColor 文本颜色
 @param numberOfLines 文本行数
 */
- (void)xs_setupLabel:(NSString *)text fontSize:(CGFloat)fontSize textColor:(UIColor *)textColor numberOfLines:(NSInteger)numberOfLines;

/**
 设置标签
 
 @param text 文本
 @param textColor 文本颜色
 @param textAlignment 文本对齐方式
 @param numberOfLines 文本行数
 */
- (void)xs_setupLabel:(NSString *)text textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)numberOfLines;

/**
 设置标签
 
 @param text 文本
 @param fontSize 文本大小
 @param textColor 文本颜色
 */
- (void)xs_setupLabel:(NSString *)text fontSize:(CGFloat)fontSize textColor:(UIColor *)textColor;

/**
 设置标签
 
 @param text 文本
 @param fontSize 文本大小
 @param textAlignment 文本对齐方式
 */
- (void)xs_setupLabel:(NSString *)text fontSize:(CGFloat)fontSize textAlignment:(NSTextAlignment)textAlignment;

/**
 设置标签
 
 @param text 文本
 @param textColor 文本颜色
 @param textAlignment 文本对齐方式
 */
- (void)xs_setupLabel:(NSString *)text textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment;

/**
 设置标签
 
 @param text 文本
 @param textAlignment 文本对齐方式
 @param numberOfLines 文本行数
 */
- (void)xs_setupLabel:(NSString *)text textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)numberOfLines;

/**
 设置标签
 
 @param text 文本
 @param fontSize 文本大小
 @param numberOfLines 文本行数
 */
- (void)xs_setupLabel:(NSString *)text fontSize:(CGFloat)fontSize numberOfLines:(NSInteger)numberOfLines;

/**
 设置标签
 
 @param text 文本
 @param fontSize 文本大小
 */
- (void)xs_setupLabel:(NSString *)text fontSize:(CGFloat)fontSize;

/**
 设置标签
 
 @param text 文本
 */
- (void)xs_setupLabel:(NSString *)text;

#pragma mark - config

/**
 准备标签
 
 @param fontSize 标签文字大小
 @param textColor 文字颜色
 @param textAlignment 对其方式
 @param numberOfLines 行数
 */
- (void)xs_configLabel:(CGFloat)fontSize textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)numberOfLines;

@end
