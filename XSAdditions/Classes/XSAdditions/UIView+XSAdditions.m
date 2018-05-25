//
//  UIView+XSAdditions.m
//  XSAdditionsDemo
//
//  Created by Cedar on 2017/3/7.
//  Copyright © 2017年 Cedar. All rights reserved.
//

#import "UIView+XSAdditions.h"
#import <objc/runtime.h>

@interface UIView ()

@property (nonatomic, weak) CAShapeLayer *redLayer;

@end

@implementation UIView (XSAdditions)

- (void)xs_hiddenRedDot {
    
    if (self.redLayer == self.layer.sublayers.lastObject) {
        
        [self.layer.sublayers.lastObject removeFromSuperlayer];
    }
}

- (void)xs_showRedDot {
    
    if (self.redLayer == self.layer.sublayers.lastObject) {
        return ;
    }
    
    CAShapeLayer *layer = [[CAShapeLayer alloc] init];
    layer.fillColor = [UIColor redColor].CGColor;
    [self.layer addSublayer:layer];
    self.redLayer = layer;
    
    CGFloat wh = MIN(MIN(self.width, self.height) / 2, 10);
    CGFloat x = self.width - wh / 2;
    CGFloat y = - wh / 2;
    CGRect frame = CGRectMake(x, y, wh, wh);
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:frame];
    layer.path = path.CGPath;
}

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

#pragma mark - override

- (void)setBorderWidth:(CGFloat)borderWidth {
    self.layer.borderWidth = borderWidth;
}

- (CGFloat)borderWidth {
    return self.layer.borderWidth;
}

- (void)setBorderColor:(UIColor *)borderColor {
    self.layer.borderColor = borderColor.CGColor;
}

- (UIColor *)borderColor {
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setCornerRadius:(CGFloat)cornerRadius {
    self.layer.cornerRadius = cornerRadius;
}

- (CGFloat)cornerRadius {
    return self.layer.cornerRadius;
}

- (void)setMasksToBounds:(BOOL)masksToBounds {
    self.layer.masksToBounds = masksToBounds;
}

- (BOOL)masksToBounds {
    return self.layer.masksToBounds;
}

- (void)setRedLayer:(CAShapeLayer *)redLayer {
    objc_setAssociatedObject(self, @selector(redLayer), redLayer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (CAShapeLayer *)redLayer {
    return objc_getAssociatedObject(self, @selector(redLayer));
}

- (void)setX:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)x {
    return self.frame.origin.x;
}

- (void)setY:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)y {
    return self.frame.origin.y;
}

- (void)setCenterX:(CGFloat)centerX {
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

- (CGFloat)centerX {
    return self.center.x;
}

- (void)setCenterY:(CGFloat)centerY {
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

- (CGFloat)centerY {
    return self.center.y;
}

- (void)setWidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)width {
    return self.frame.size.width;
}

- (void)setHeight:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat)height {
    return self.frame.size.height;
}

- (void)setSize:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (CGSize)size {
    return self.frame.size;
}

- (void)setOrigin:(CGPoint)origin {
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGPoint)origin {
    return self.frame.origin;
}

@end
