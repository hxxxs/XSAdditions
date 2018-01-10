//
//  UIButton+XSAdditions.m
//  XSAdditionsDemo
//
//  Created by huangxuesong on 2018/1/10.
//  Copyright © 2018年 Cedar. All rights reserved.
//

#import "UIButton+XSAdditions.h"

@implementation UIButton (XSAdditions)

+ (instancetype)xs_button:(NSString *)title color:(UIColor *)color {
    
    UIButton *btn = [[self alloc] init];
    
    [btn xs_setupNormalButton:title color:color];
    
    return btn;
}

+ (instancetype)xs_button:(NSString *)title color:(UIColor *)color image:(UIImage *)image {
    
    UIButton *btn = [[self alloc] init];
    
    [btn xs_setupNormalButton:title color:color image:image];
    
    return btn;
}

+ (instancetype)xs_button:(NSString *)title color:(UIColor *)color backgroundImage:(UIImage *)backgroundImage {
    
    UIButton *btn = [[self alloc] init];
    
    [btn xs_setupNormalButton:title color:color backgroundImage: backgroundImage];
    
    return btn;
}

+ (instancetype)xs_button:(NSString *)title color:(UIColor *)color image:(UIImage *)image backgroundImage:(UIImage *)backgroundImage {
    
    UIButton *btn = [[self alloc] init];
    
    [btn xs_setupNormalButton:title color:color image:image backgroundImage: backgroundImage];
    
    return btn;
}

#pragma mark - setupNormal

- (void)xs_setupNormalButton:(NSString *)title color:(UIColor *)color image:(UIImage *)image backgroundImage:(UIImage *)backgroundImage {
    
    [self setTitle:title forState:UIControlStateNormal];
    [self setTitleColor:color forState:UIControlStateNormal];
    
    if (image != nil) {
        [self setImage:image forState:UIControlStateNormal];
    }
    
    if (backgroundImage != nil) {
        [self setBackgroundImage:backgroundImage forState:UIControlStateNormal];
    }
    
    [self sizeToFit];
}

- (void)xs_setupNormalButton:(NSString *)title color:(UIColor *)color image:(UIImage *)image {
    
    [self setTitle:title forState:UIControlStateNormal];
    [self setTitleColor:color forState:UIControlStateNormal];
    
    if (image != nil) {
        [self setImage:image forState:UIControlStateNormal];
    }

    [self sizeToFit];
}

- (void)xs_setupNormalButton:(NSString *)title color:(UIColor *)color backgroundImage:(UIImage *)backgroundImage {
    
    [self setTitle:title forState:UIControlStateNormal];
    [self setTitleColor:color forState:UIControlStateNormal];

    if (backgroundImage != nil) {
        [self setBackgroundImage:backgroundImage forState:UIControlStateNormal];
    }
    
    [self sizeToFit];
}

- (void)xs_setupNormalButton:(NSString *)title color:(UIColor *)color {
    
    [self setTitle:title forState:UIControlStateNormal];
    [self setTitleColor:color forState:UIControlStateNormal];

    [self sizeToFit];
}

#pragma mark - setupSelected

- (void)xs_setupSelectedButton:(NSString *)title color:(UIColor *)color image:(UIImage *)image backgroundImage:(UIImage *)backgroundImage {

    [self setTitle:title forState:UIControlStateSelected];
    [self setTitleColor:color forState:UIControlStateSelected];

    if (image != nil) {
        [self setImage:image forState:UIControlStateSelected];
    }

    if (backgroundImage != nil) {
        [self setBackgroundImage:backgroundImage forState:UIControlStateSelected];
    }

    [self sizeToFit];
}

- (void)xs_setupSelectedButton:(NSString *)title color:(UIColor *)color image:(UIImage *)image {

    [self setTitle:title forState:UIControlStateSelected];
    [self setTitleColor:color forState:UIControlStateSelected];

    if (image != nil) {
        [self setImage:image forState:UIControlStateSelected];
    }

    [self sizeToFit];
}

- (void)xs_setupSelectedButton:(NSString *)title color:(UIColor *)color backgroundImage:(UIImage *)backgroundImage {

    [self setTitle:title forState:UIControlStateSelected];
    [self setTitleColor:color forState:UIControlStateSelected];

    if (backgroundImage != nil) {
        [self setBackgroundImage:backgroundImage forState:UIControlStateSelected];
    }

    [self sizeToFit];
}

- (void)xs_setupSelectedButton:(NSString *)title color:(UIColor *)color {
    
    [self setTitle:title forState:UIControlStateSelected];
    [self setTitleColor:color forState:UIControlStateSelected];
    
    [self sizeToFit];
}

#pragma mark - setupHighlighted

- (void)xs_setupHighlightedButton:(NSString *)title color:(UIColor *)color image:(UIImage *)image backgroundImage:(UIImage *)backgroundImage {
    
    [self setTitle:title forState:UIControlStateHighlighted];
    [self setTitleColor:color forState:UIControlStateHighlighted];
    
    if (image != nil) {
        [self setImage:image forState:UIControlStateHighlighted];
    }
    
    if (backgroundImage != nil) {
        [self setBackgroundImage:backgroundImage forState:UIControlStateHighlighted];
    }
    
    [self sizeToFit];
}

- (void)xs_setupHighlightedButton:(NSString *)title color:(UIColor *)color image:(UIImage *)image {
    
    [self setTitle:title forState:UIControlStateHighlighted];
    [self setTitleColor:color forState:UIControlStateHighlighted];
    
    if (image != nil) {
        [self setImage:image forState:UIControlStateHighlighted];
    }
    
    [self sizeToFit];
}

- (void)xs_setupHighlightedButton:(NSString *)title color:(UIColor *)color backgroundImage:(UIImage *)backgroundImage {
    
    [self setTitle:title forState:UIControlStateHighlighted];
    [self setTitleColor:color forState:UIControlStateHighlighted];
    
    if (backgroundImage != nil) {
        [self setBackgroundImage:backgroundImage forState:UIControlStateHighlighted];
    }
    
    [self sizeToFit];
}

- (void)xs_setupHighlightedButton:(NSString *)title color:(UIColor *)color {
    
    [self setTitle:title forState:UIControlStateHighlighted];
    [self setTitleColor:color forState:UIControlStateHighlighted];
    [self sizeToFit];
}

@end
