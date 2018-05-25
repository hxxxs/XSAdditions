//
//  CALayer+XSAdditions.m
//  Pods-XSAdditions_Example
//
//  Created by hxs on 2018/5/25.
//

#import "CALayer+XSAdditions.h"

@implementation CALayer (XSAdditions)

- (UIColor *)borderColorFromUIColor {
    return [UIColor colorWithCGColor:self.borderColor];
}

-(void)setBorderColorFromUIColor:(UIColor *)borderColorFromUIColor {
    self.borderColor = borderColorFromUIColor.CGColor;
}

@end
