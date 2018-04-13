//
//  UILabel+XSAdditions.m
//  XSAdditionsDemo
//
//  Created by Cedar on 2017/3/7.
//  Copyright © 2017年 Cedar. All rights reserved.
//

#import "UILabel+XSAdditions.h"

@implementation UILabel (XSAdditions)

+ (instancetype)xs_labelWithText:(NSString *)text fontSize:(CGFloat)fontSize color:(UIColor *)color {
    UILabel *label = [[self alloc] init];
    [label xs_setupLabel:text fontSize:fontSize textColor:color];
    return label;
}

+ (instancetype)xs_labelWithText:(NSString *)text fontSize:(CGFloat)fontSize color:(UIColor *)color numberOfLines:(NSInteger)numberOfLines {
    UILabel *label = [[self alloc] init];
    [label xs_setupLabel:text fontSize:fontSize textColor:color numberOfLines:numberOfLines];
    return label;
}

+ (instancetype)xs_labelWithText:(NSString *)text fontSize:(CGFloat)fontSize color:(UIColor *)color textAlignment:(NSTextAlignment)textAlignment {
    UILabel *label = [[self alloc] init];
    [label xs_setupLabel:text fontSize:fontSize textColor:color textAlignment:textAlignment];
    return label;
}

+ (instancetype)xs_labelWithText:(NSString *)text fontSize:(CGFloat)fontSize color:(UIColor *)color textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)numberOfLines {
    UILabel *label = [[self alloc] init];
    [label xs_setupLabel:text fontSize:fontSize textColor:color textAlignment:textAlignment numberOfLines:numberOfLines];
    return label;
}

#pragma mark - setup

- (void)xs_setupLabel:(NSString *)text fontSize:(CGFloat)fontSize textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)numberOfLines {
    
    [self xs_configLabel:fontSize textColor:textColor textAlignment:textAlignment numberOfLines:numberOfLines];
    
    self.text = text;
    [self sizeToFit];
}

- (void)xs_setupLabel:(NSString *)text fontSize:(CGFloat)fontSize textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment {
    
    [self xs_setupLabel:text fontSize:fontSize textColor:textColor textAlignment:textAlignment numberOfLines:1];
}

- (void)xs_setupLabel:(NSString *)text fontSize:(CGFloat)fontSize textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)numberOfLines {
    
    [self xs_setupLabel:text fontSize:fontSize textColor:[UIColor darkGrayColor] textAlignment:textAlignment numberOfLines:numberOfLines];
}

- (void)xs_setupLabel:(NSString *)text fontSize:(CGFloat)fontSize textColor:(UIColor *)textColor numberOfLines:(NSInteger)numberOfLines {
    
    [self xs_setupLabel:text fontSize:fontSize textColor:textColor textAlignment:NSTextAlignmentLeft numberOfLines:numberOfLines];
}

- (void)xs_setupLabel:(NSString *)text textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)numberOfLines {

    [self xs_setupLabel:text fontSize:16 textColor:textColor textAlignment:textAlignment numberOfLines:numberOfLines];
}

- (void)xs_setupLabel:(NSString *)text fontSize:(CGFloat)fontSize textColor:(UIColor *)textColor {
    
    [self xs_setupLabel:text fontSize:fontSize textColor:textColor textAlignment:NSTextAlignmentLeft numberOfLines:1];
}

- (void)xs_setupLabel:(NSString *)text fontSize:(CGFloat)fontSize textAlignment:(NSTextAlignment)textAlignment {
    
    [self xs_setupLabel:text fontSize:fontSize textColor:[UIColor darkGrayColor] textAlignment:textAlignment numberOfLines:1];
}

- (void)xs_setupLabel:(NSString *)text textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment {
    
    [self xs_setupLabel:text fontSize:16 textColor:textColor textAlignment:textAlignment numberOfLines:1];
}

- (void)xs_setupLabel:(NSString *)text textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)numberOfLines {
    
    [self xs_setupLabel:text fontSize:16 textColor:[UIColor darkGrayColor] textAlignment:textAlignment numberOfLines:numberOfLines];
}

- (void)xs_setupLabel:(NSString *)text fontSize:(CGFloat)fontSize numberOfLines:(NSInteger)numberOfLines {
    
    [self xs_setupLabel:text fontSize:fontSize textColor:[UIColor darkGrayColor] textAlignment:NSTextAlignmentLeft numberOfLines:numberOfLines];
}

- (void)xs_setupLabel:(NSString *)text fontSize:(CGFloat)fontSize {
    
    [self xs_setupLabel:text fontSize:fontSize textColor:[UIColor darkGrayColor] textAlignment:NSTextAlignmentLeft numberOfLines:1];
}

- (void)xs_setupLabel:(NSString *)text {
    
    [self xs_setupLabel:text fontSize:16 textColor:[UIColor darkGrayColor] textAlignment:NSTextAlignmentLeft numberOfLines:1];
}

#pragma mark - config

- (void)xs_configLabel:(CGFloat)fontSize textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)numberOfLines {
    
    self.font = [UIFont systemFontOfSize:fontSize];
    self.textColor = textColor;
    self.textAlignment = textAlignment;
    self.numberOfLines = numberOfLines;
}

@end
