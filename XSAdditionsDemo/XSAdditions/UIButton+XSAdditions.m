//
//  UIButton+XSAdditions.m
//  XSAdditionsDemo
//
//  Created by Cedar on 2017/3/7.
//  Copyright © 2017年 Cedar. All rights reserved.
//

#import "UIButton+XSAdditions.h"

@implementation UIButton (XSAdditions)

+ (instancetype)xs_textButton:(NSString *)title
                     fontSize:(CGFloat)fontSize
                  normalColor:(UIColor *)normalColor
                selectedColor:(UIColor *)selectedColor
                  normalImage:(UIImage *)normalImage
                selectedImage:(UIImage *)selectedImage {
    
    UIButton *button = [[self alloc] init];
    
    [button setTitle:title forState:UIControlStateNormal];
    
    [button setTitleColor:normalColor forState:UIControlStateNormal];
    [button setTitleColor:selectedColor forState:UIControlStateSelected];
    
    button.titleLabel.font = [UIFont systemFontOfSize:fontSize];
    
    [button setBackgroundImage:normalImage forState:UIControlStateNormal];
    [button setBackgroundImage:selectedImage forState:UIControlStateSelected];
    
    [button sizeToFit];
    
    return button;
}

+ (instancetype)xs_textButton:(NSString *)title
                     fontSize:(CGFloat)fontSize
                  normalColor:(UIColor *)normalColor
             highlightedColor:(UIColor *)highlightedColor {
    return [self xs_textButton:title fontSize:fontSize normalColor:normalColor highlightedColor:highlightedColor backgroundImageName:nil];
}

+ (instancetype)xs_textButton:(NSString *)title
                     fontSize:(CGFloat)fontSize
                  normalColor:(UIColor *)normalColor
             highlightedColor:(UIColor *)highlightedColor
          backgroundImageName:(NSString *)backgroundImageName {
    
    UIButton *button = [[self alloc] init];
    
    [button setTitle:title forState:UIControlStateNormal];
    
    [button setTitleColor:normalColor forState:UIControlStateNormal];
    [button setTitleColor:highlightedColor forState:UIControlStateHighlighted];
    
    button.titleLabel.font = [UIFont systemFontOfSize:fontSize];
    
    if (backgroundImageName != nil) {
        [button setBackgroundImage:[UIImage imageNamed:backgroundImageName] forState:UIControlStateNormal];
        
        NSString *backgroundImageNameHL = [backgroundImageName stringByAppendingString:@"_highlighted"];
        [button setBackgroundImage:[UIImage imageNamed:backgroundImageNameHL] forState:UIControlStateHighlighted];
    }
    
    [button sizeToFit];
    
    return button;
}

+ (instancetype)xs_imageButton:(NSString *)imageName
           backgroundImageName:(NSString *)backgroundImageName {
    
    UIButton *button = [[self alloc] init];
    
    [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    
    NSString *imageNameHL = [imageName stringByAppendingString:@"_highlighted"];
    [button setImage:[UIImage imageNamed:imageNameHL] forState:UIControlStateHighlighted];
    
    [button setBackgroundImage:[UIImage imageNamed:backgroundImageName] forState:UIControlStateNormal];
    
    NSString *backgroundImageNameHL = [backgroundImageName stringByAppendingString:@"_highlighted"];
    [button setBackgroundImage:[UIImage imageNamed:backgroundImageNameHL] forState:UIControlStateHighlighted];
    
    [button sizeToFit];
    
    return button;
}

@end
