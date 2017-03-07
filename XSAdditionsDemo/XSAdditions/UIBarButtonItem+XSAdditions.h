//
//  UIBarButtonItem+XSAdditions.h
//  XSAdditionsDemo
//
//  Created by Cedar on 2017/3/7.
//  Copyright © 2017年 Cedar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (XSAdditions)


/**
 构造方法
 
 @param title 标题
 @param target 目标
 @param action 方法
 @param isBack 是否是返回按钮
 @return UIBarButtonItem
 */
+ (instancetype)xs_itemWithTitle:(NSString *)title
                          target:(id)target
                          action:(SEL)action
                          isBack:(BOOL)isBack;

/**
 构造方法
 
 @param title 标题
 @param fontSize 文字大小
 @param titleColor 文字颜色
 @param target 目标
 @param action 方法
 @param isBack 是否是返回按钮
 @return UIBarButtonItem
 */
+ (instancetype)xs_itemWithTitle:(NSString *)title
                        fontSize:(CGFloat )fontSize
                      titleColor:(UIColor *)titleColor
                          target:(id)target
                          action:(SEL)action
                          isBack:(BOOL)isBack;

@end
