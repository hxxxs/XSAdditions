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
 创建文本标签
 
 @param text     文本
 @param fontSize 字体大小
 @param color    文字颜色
 */
+ (instancetype)xs_labelWithText:(NSString *)text
                        fontSize:(CGFloat)fontSize
                           color:(UIColor *)color;

@end
