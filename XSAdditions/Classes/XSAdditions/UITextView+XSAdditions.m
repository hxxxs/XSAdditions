//
//  UITextView+XSAdditions.m
//  Pods-XSAdditions_Example
//
//  Created by hxs on 2018/5/25.
//

#import "UITextView+XSAdditions.h"
#import <objc/runtime.h>

static char *xs_placeholderLabelKey = "xs_placeholderLabelKey";

@interface UITextView ()

@property (nonatomic, strong) UILabel *xs_placeholderLabel;

@end

@implementation UITextView (XSAdditions)

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UITextViewTextDidChangeNotification object:self];
}

- (void)layoutSubviews {
    if (self.xs_placeholderLabel) {
        UIEdgeInsets textContainerInset = self.textContainerInset;
        CGFloat lineFragmentPadding = self.textContainer.lineFragmentPadding;
        CGFloat x = lineFragmentPadding + textContainerInset.left + self.layer.borderWidth;
        CGFloat y = textContainerInset.top + self.layer.borderWidth;
        CGFloat width = CGRectGetWidth(self.bounds) - x - textContainerInset.right - 2*self.layer.borderWidth;
        CGFloat height = [self.xs_placeholderLabel sizeThatFits:CGSizeMake(width, 0)].height;
        self.xs_placeholderLabel.frame = CGRectMake(x, y, width, height);
    }
}

- (void)setXs_placeholderLabel:(UILabel *)xs_placeholderLabel {
    objc_setAssociatedObject(self, xs_placeholderLabelKey, xs_placeholderLabel, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    //  添加通知监听textView内容变化
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updatePlaceholder) name:UITextViewTextDidChangeNotification object:self];
}

- (UILabel *)xs_placeholderLabel {
    return objc_getAssociatedObject(self, xs_placeholderLabelKey);
}

- (void)setPlaceholder:(NSString *)placeholder{
    self.xs_placeholderLabel = [[UILabel alloc] init];
    self.xs_placeholderLabel.numberOfLines = 0;
    self.xs_placeholderLabel.textColor = [UIColor lightGrayColor];
    self.xs_placeholderLabel.text = placeholder;
    self.xs_placeholderLabel.textAlignment = self.textAlignment;
    self.xs_placeholderLabel.font = self.font != nil ? self.font : [self defaultFont];
    [self insertSubview:self.xs_placeholderLabel atIndex:0];
    [self updatePlaceholder];
}

- (NSString *)placeholder {
    return self.xs_placeholderLabel.text;
}

#pragma mark - ui

- (void)updatePlaceholder {
    self.xs_placeholderLabel.hidden = self.text.length > 0;
}

- (UIFont *)defaultFont {
    UITextView *v = [[UITextView alloc] init];
    v.text = @" ";
    return v.font;
}

@end
