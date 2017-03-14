//
//  UIScreen+XSAdditions.h
//  XSAdditionsDemo
//
//  Created by Cedar on 2017/3/7.
//  Copyright © 2017年 Cedar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScreen (XSAdditions)

/**
 屏幕宽度
 */
+ (CGFloat)xs_screenWidth;

/**
 屏幕高度
 */
+ (CGFloat)xs_screenHeight;

/**
 分辨率
 */
+ (CGFloat)xs_scale;

@end
