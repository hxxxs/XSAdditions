//
//  UIView+XSAdditions.m
//  XSAdditionsDemo
//
//  Created by Cedar on 2017/3/7.
//  Copyright © 2017年 Cedar. All rights reserved.
//

#import "UIView+XSAdditions.h"

@implementation UIView (XSAdditions)

- (UIViewController*)xs_viewController {
    for (UIView* next = [self superview]; next; next = next.superview) {
        UIResponder* nextResponder = [next nextResponder];
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController*)nextResponder;
        }
    }
    return nil;
}

- (UIImage *)xs_snapshotImage {
    
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, YES, 0);
    
    [self drawViewHierarchyInRect:self.bounds afterScreenUpdates:YES];
    
    UIImage *result = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return result;
}

#pragma mark - frame 属性的重写
- (void)setXs_x:(CGFloat)xs_x {
    CGRect frame = self.frame;
    frame.origin.x = xs_x;
    self.frame = frame;
}

- (CGFloat)xs_x {
    return self.frame.origin.x;
}

- (void)setXs_y:(CGFloat)xs_y {
    CGRect frame = self.frame;
    frame.origin.y = xs_y;
    self.frame = frame;
}

- (CGFloat)xs_y {
    return self.frame.origin.y;
}

- (void)setXs_centerX:(CGFloat)xs_centerX {
    CGPoint center = self.center;
    center.x = xs_centerX;
    self.center = center;
}

- (CGFloat)xs_centerX {
    return self.center.x;
}

- (void)setXs_centerY:(CGFloat)xs_centerY {
    CGPoint center = self.center;
    center.y = xs_centerY;
    self.center = center;
}

- (CGFloat)xs_centerY {
    return self.center.y;
}

- (void)setXs_width:(CGFloat)xs_width {
    CGRect frame = self.frame;
    frame.size.width = xs_width;
    self.frame = frame;
}

- (CGFloat)xs_width {
    return self.frame.size.width;
}

- (void)setXs_height:(CGFloat)xs_height {
    CGRect frame = self.frame;
    frame.size.height = xs_height;
    self.frame = frame;
}

- (CGFloat)xs_height {
    return self.frame.size.height;
}

- (void)setXs_size:(CGSize)xs_size {
    CGRect frame = self.frame;
    frame.size = xs_size;
    self.frame = frame;
}

- (CGSize)xs_size {
    return self.frame.size;
}

- (void)setXs_origin:(CGPoint)xs_origin {
    CGRect frame = self.frame;
    frame.origin = xs_origin;
    self.frame = frame;
}

- (CGPoint)xs_origin {
    return self.frame.origin;
}

@end