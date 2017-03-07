//
//  UIImage+XSAdditions.h
//  XSAdditionsDemo
//
//  Created by Cedar on 2017/3/7.
//  Copyright © 2017年 Cedar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (XSAdditions)

/**
 *  字符串转图片
 */
+ (instancetype)imageWithBase64String:(NSString *)imgString;

#pragma mark - 虚线
/**
 绘制虚线框
 
 @param cornerRadius 弧度半径
 @param lineColor 虚线颜色
 */
+ (instancetype)xs_dashImage:(CGFloat)cornerRadius
                   lineColor:(UIColor *)lineColor;

/**
 绘制虚线框
 
 @param cornerRadius 弧度半径
 @param lineColor 虚线颜色
 @param lineWidth 线宽
 */
+ (instancetype)xs_dashImage:(CGFloat)cornerRadius
                   lineColor:(UIColor *)lineColor
                   lineWidth:(CGFloat)lineWidth;

/**
 绘制虚线框
 
 @param cornerRadius 弧度半径
 @param size 图片大小
 @param lineColor 虚线颜色
 @param lineWidth 线宽
 */
+ (instancetype)xs_dashImage:(CGFloat)cornerRadius
                        size:(CGSize)size
                   lineColor:(UIColor *)lineColor
                   lineWidth:(CGFloat)lineWidth;

#pragma mark - 弧形裁剪
/**
 根据弧度裁剪图片（无边框，白色背景）
 
 @param cornerRadius 圆弧半径
 */
- (instancetype)xs_ovalImage:(CGFloat)cornerRadius;

/**
 根据弧度裁剪图片（无边框）
 
 @param backColor 背景颜色
 @param cornerRadius 圆弧半径
 */
- (instancetype)xs_ovalImage:(UIColor *)backColor
                cornerRadius:(CGFloat)cornerRadius;

/**
 根据弧度裁剪图片
 
 @param backColor 背景颜色
 @param cornerRadius 圆弧半径
 @param lineWidth 边框线宽
 @param lineColor 边框颜色
 */
- (instancetype)xs_ovalImage:(UIColor *)backColor
                cornerRadius:(CGFloat)cornerRadius
                   lineWidth:(CGFloat)lineWidth
                   lineColor:(UIColor *)lineColor;

#pragma mark - 裁剪圆形图片
/**
 根据图片名称裁剪相应的圆形图片（无边框，白色背景）
 
 @param name 图片名称
 */
+ (instancetype)xs_avatarImageWithName:(NSString *)name;

/**
 根据图片名称裁剪相应的圆形图片（无边框）
 
 @param name 图片名称
 @param backColor 图片背景色
 */
+ (instancetype)xs_avatarImageWithName:(NSString *)name
                             backColor:(UIColor *)backColor;

/**
 根据图片名称裁剪相应的圆形图片
 
 @param name 图片名称
 @param backColor 图片背景色
 @param lineWidth 图片边框线宽
 @param lineColor 边框颜色
 */
+ (instancetype)xs_avatarImageWithName:(NSString *)name
                             backColor:(UIColor *)backColor
                             lineWidth:(CGFloat)lineWidth
                             lineColor:(UIColor *)lineColor;

/**
 根据图片生成对应的圆形图片（无边框，背景颜色为白色）
 
 @param image 需要裁剪的图片
 */
+ (instancetype)xs_avatarImage:(UIImage *)image;

/**
 根据图片生成对应的圆形图片（无边框）
 
 @param image 需要裁剪的图片
 @param backColor 图片背景色
 */
+ (instancetype)xs_avatarImage:(UIImage *)image
                     backColor:(UIColor *)backColor;

/**
 根据图片生成对应的圆形图片
 
 @param image 需要裁剪的图片
 @param backColor 图片背景色
 @param lineWidth 图片边框线宽
 @param lineColor 边框颜色
 */
+ (instancetype)xs_avatarImage:(UIImage *)image
                     backColor:(UIColor *)backColor
                     lineWidth:(CGFloat)lineWidth
                     lineColor:(UIColor *)lineColor;

/**
 裁剪圆形图片（无边框， 背景为白色）
 */
- (instancetype)xs_avatarImage;

/**
 裁剪圆形图片（无边框）
 
 @param backColor 图片背景色
 */
- (instancetype)xs_avatarImage:(UIColor *)backColor;

/**
 裁剪圆形图片
 
 @param backColor 图片背景色
 @param lineWidth 图片边框线宽
 @param lineColor 边框颜色
 */
- (instancetype)xs_avatarImage:(UIColor *)backColor
                     lineWidth:(CGFloat)lineWidth
                     lineColor:(UIColor *)lineColor;

#pragma mark - 生成纯色图片
/**
 初始化纯色图片
 */
+ (instancetype)xs_imageWithColor:(UIColor *)color;

/**
 初始化指定大小的纯色图片
 */
+ (instancetype)xs_imageWithColor:(UIColor *)color
                             size:(CGSize)size;

/**
 初始化带圆弧纯色图片
 */
+ (UIImage *)xs_imageWithColor:(UIColor *)color
                          size:(CGSize)size
                  cornerRadius:(CGFloat)cornerRadius;

@end
