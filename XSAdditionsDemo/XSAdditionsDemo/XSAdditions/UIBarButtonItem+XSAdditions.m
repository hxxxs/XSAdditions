//
//  UIBarButtonItem+XSAdditions.m
//  XSAdditionsDemo
//
//  Created by Cedar on 2017/3/7.
//  Copyright © 2017年 Cedar. All rights reserved.
//

#import "UIBarButtonItem+XSAdditions.h"
#import "UIButton+XSAdditions.h"

@implementation UIBarButtonItem (XSAdditions)

+ (instancetype)xs_itemWithTitle:(NSString *)title
                        fontSize:(CGFloat )fontSize
                      titleColor:(UIColor *)titleColor
                          target:(id)target
                          action:(SEL)action
                          isBack:(BOOL)isBack {
    
    UIButton *btn = [UIButton xs_textButton:title
                                   fontSize:fontSize
                                normalColor:titleColor
                           highlightedColor:nil];
    
    if (isBack) {
        
        [btn setImage:[UIImage imageNamed:@"navigationbar_back_withtext"] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"navigationbar_back_withtext_highlighted"] forState:UIControlStateHighlighted];
        
        [btn sizeToFit];
    }
    
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return [[UIBarButtonItem alloc] initWithCustomView: btn];
}

+ (instancetype)xs_itemWithTitle:(NSString *)title
                          target:(id)target
                          action:(SEL)action
                          isBack:(BOOL)isBack {
    
    return [self xs_itemWithTitle:title
                         fontSize:16
                       titleColor:[UIColor whiteColor]
                           target:target
                           action:action
                           isBack:isBack];
}

@end
