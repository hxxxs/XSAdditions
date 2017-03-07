//
//  UIButton+XSAdditions.h
//  XSAdditionsDemo
//
//  Created by Cedar on 2017/3/7.
//  Copyright © 2017年 Cedar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (XSAdditions)

/**
 创建文本按钮
 
 @param title 标题
 @param fontSize 字体
 @param normalColor 默认文字颜色
 @param selectedColor 选中状态文字颜色
 @param normalImage 默认背景图片
 @param selectedImage 选中状态背景图片
 */
+ (instancetype)xs_textButton:(NSString *)title
                     fontSize:(CGFloat)fontSize
                  normalColor:(UIColor *)normalColor
                selectedColor:(UIColor *)selectedColor
                  normalImage:(UIImage *)normalImage
                selectedImage:(UIImage *)selectedImage;

/**
 创建文本按钮
 
 @param title            标题文字
 @param fontSize         字体大小
 @param normalColor      默认颜色
 @param highlightedColor 高亮颜色
 */
+ (instancetype)xs_textButton:(NSString *)title
                     fontSize:(CGFloat)fontSize
                  normalColor:(UIColor *)normalColor
             highlightedColor:(UIColor *)highlightedColor;

/**
 创建文本按钮
 
 @param title               标题文字
 @param fontSize            字体大小
 @param normalColor         默认颜色
 @param highlightedColor    高亮颜色
 @param backgroundImageName 背景图像名称
 */
+ (instancetype)xs_textButton:(NSString *)title
                     fontSize:(CGFloat)fontSize
                  normalColor:(UIColor *)normalColor
             highlightedColor:(UIColor *)highlightedColor
          backgroundImageName:(NSString *)backgroundImageName;

/**
 创建图像按钮
 
 @param imageName           图像名称
 @param backgroundImageName 背景图像名称
 */
+ (instancetype)xs_imageButton:(NSString *)imageName
           backgroundImageName:(NSString *)backgroundImageName;

@end
