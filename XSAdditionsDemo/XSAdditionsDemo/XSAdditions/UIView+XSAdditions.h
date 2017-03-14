//
//  UIView+XSAdditions.h
//  XSAdditionsDemo
//
//  Created by Cedar on 2017/3/7.
//  Copyright © 2017年 Cedar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (XSAdditions)

@property (nonatomic, assign) CGFloat xs_x;
@property (nonatomic, assign) CGFloat xs_y;
@property (nonatomic, assign) CGFloat xs_centerX;
@property (nonatomic, assign) CGFloat xs_centerY;
@property (nonatomic, assign) CGFloat xs_width;
@property (nonatomic, assign) CGFloat xs_height;
@property (nonatomic, assign) CGSize xs_size;
@property (nonatomic, assign) CGPoint xs_origin;

/**
 返回视图截图
 */
- (UIImage *)xs_snapshotImage;

- (UIViewController *)xs_viewController;

@end
