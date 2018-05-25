//
//  UIView+XSAdditions.h
//  XSAdditionsDemo
//
//  Created by Cedar on 2017/3/7.
//  Copyright © 2017年 Cedar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (XSAdditions)

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) CGPoint origin;
@property (nonatomic, strong) UIColor *borderColor;
@property (nonatomic, assign) BOOL masksToBounds;
@property (nonatomic, assign) CGFloat cornerRadius;
@property (nonatomic, assign) CGFloat borderWidth;

/**
 返回视图截图
 */
- (UIImage *)xs_snapshotImage;

- (UIViewController *)xs_viewController;

/**
 显示红点
 */
- (void)xs_showRedDot;

/**
 隐藏红点
 */
- (void)xs_hiddenRedDot;

@end
