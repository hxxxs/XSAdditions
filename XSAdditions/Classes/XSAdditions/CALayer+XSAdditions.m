//
//  CALayer+XSAdditions.m
//  Pods-XSAdditions_Example
//
//  Created by hxs on 2018/5/25.
//

#import "CALayer+XSAdditions.h"
#import <objc/runtime.h>

@implementation CALayer (XSAdditions)

- (UIColor *)borderColorFromUIColor {
    
    return objc_getAssociatedObject(self, @selector(borderColorFromUIColor));
    
}

-(void)setBorderColorFromUIColor:(UIColor *)borderColorFromUIColor {
    objc_setAssociatedObject(self, @selector(borderColorFromUIColor), borderColorFromUIColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    self.borderColor = borderColorFromUIColor.CGColor;
}

@end
