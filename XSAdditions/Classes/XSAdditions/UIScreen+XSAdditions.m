//
//  UIScreen+XSAdditions.m
//  XSAdditionsDemo
//
//  Created by Cedar on 2017/3/7.
//  Copyright © 2017年 Cedar. All rights reserved.
//

#import "UIScreen+XSAdditions.h"

@implementation UIScreen (XSAdditions)

+ (CGFloat)xs_screenWidth {
    return [UIScreen mainScreen].bounds.size.width;
}

+ (CGFloat)xs_screenHeight {
    return [UIScreen mainScreen].bounds.size.height;
}

+ (CGFloat)xs_scale {
    return [UIScreen mainScreen].scale;
}

@end
