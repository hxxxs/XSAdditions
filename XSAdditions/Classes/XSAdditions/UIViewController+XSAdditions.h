//
//  UIViewController+XSAdditions.h
//  XSAdditionsDemo
//
//  Created by Cedar on 2017/3/7.
//  Copyright © 2017年 Cedar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (XSAdditions)

/**
 * 在当前视图控制器中添加子控制器，将子控制器的视图添加到 view 中
 *
 * @param childController 要添加的子控制器
 * @param view            要添加到的视图
 */
- (void)xs_addChildController:(UIViewController *)childController intoView:(UIView *)view;

/**
 打电话
 */
- (void)xs_callPhone:(NSString *)phone;

@end
