//
//  UIImage+XSAdditions.m
//  XSAdditionsDemo
//
//  Created by Cedar on 2017/3/7.
//  Copyright © 2017年 Cedar. All rights reserved.
//

#import "UIImage+XSAdditions.h"

@implementation UIImage (XSAdditions)

+ (instancetype)imageWithBase64String:(NSString *)imgString {
    
    NSData *data   = [[NSData alloc] initWithBase64EncodedString:imgString options:NSDataBase64DecodingIgnoreUnknownCharacters];
    
    return [UIImage imageWithData:data];;
}

#pragma mark - 虚线图片
+ (instancetype)xs_dashImage:(CGFloat)cornerRadius
                   lineColor:(UIColor *)lineColor {
    
    return [self xs_dashImage:cornerRadius
                    lineColor:lineColor
                    lineWidth:1];
}

+ (instancetype)xs_dashImage:(CGFloat)cornerRadius
                   lineColor:(UIColor *)lineColor
                   lineWidth:(CGFloat)lineWidth {
    
    CGFloat minW = cornerRadius * 2 + 1;
    return [self xs_dashImage:cornerRadius
                         size:CGSizeMake(minW, minW)
                    lineColor:lineColor
                    lineWidth:lineWidth];
}

+ (instancetype)xs_dashImage:(CGFloat)cornerRadius
                        size:(CGSize)size
                   lineColor:(UIColor *)lineColor
                   lineWidth:(CGFloat)lineWidth {
    //  定义绘制区域
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    
    //  开启上下文
    UIGraphicsBeginImageContextWithOptions(rect.size, YES, 0);
    
    //  设置填充颜色
    [[UIColor whiteColor] setFill];
    UIRectFill(rect);
    
    //    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:cornerRadius];
    //    CGFloat dash[] = {3,1};
    //    [path setLineDash:dash count:1 phase:0];
    //    path.lineWidth = lineWidth;
    //    [lineColor setStroke];
    //    [path stroke];
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(cornerRadius - 3, 0)];
    [path addLineToPoint:CGPointMake(size.width - cornerRadius + 3, 0)];
    [path moveToPoint:CGPointMake(size.width - cornerRadius + 3, size.height)];
    [path addLineToPoint:CGPointMake(cornerRadius - 3, size.height)];
    CGFloat dash[] = {3,1};
    [path setLineDash:dash count:1 phase:0];
    path.lineWidth = lineWidth;
    [lineColor setStroke];
    [path stroke];
    
    UIBezierPath *pathArc = [UIBezierPath bezierPath];
    [pathArc moveToPoint:CGPointMake(size.width - cornerRadius, 0)];
    [pathArc addArcWithCenter:CGPointMake(size.width - cornerRadius, size.height / 2) radius:cornerRadius startAngle:-M_PI_2 endAngle:M_PI_2 clockwise:YES];
    [pathArc moveToPoint:CGPointMake(cornerRadius, size.height)];
    [pathArc addArcWithCenter:CGPointMake(cornerRadius, size.height / 2) radius:cornerRadius startAngle:M_PI_2 endAngle:-M_PI_2 clockwise:YES];
    [pathArc setLineDash:dash count:1 phase:0];
    pathArc.lineWidth = lineWidth / 2;
    [lineColor setStroke];
    [pathArc stroke];
    
    //  获取结果
    UIImage *result = UIGraphicsGetImageFromCurrentImageContext();
    
    //  关闭上下文
    UIGraphicsEndImageContext();
    return result;
}

#pragma mark - 椭圆
- (instancetype)xs_ovalImage:(CGFloat)cornerRadius {
    return [self xs_ovalImage:[UIColor whiteColor] cornerRadius:cornerRadius];
}

- (instancetype)xs_ovalImage:(UIColor *)backColor cornerRadius:(CGFloat)cornerRadius {
    return [self xs_ovalImage:backColor cornerRadius:cornerRadius lineWidth:0 lineColor:[UIColor whiteColor]];
}

- (instancetype)xs_ovalImage:(UIColor *)backColor cornerRadius:(CGFloat)cornerRadius lineWidth:(CGFloat)lineWidth lineColor:(UIColor *)lineColor {
    
    //  定义绘制区域
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.width);
    
    //  开启上下文
    UIGraphicsBeginImageContextWithOptions(self.size, YES, 0);
    
    //  设置填充颜色
    [backColor setFill];
    UIRectFill(rect);
    
    //  裁剪圆形区域
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:cornerRadius];
    [path addClip];
    
    //  绘制到指定位置
    [self drawInRect:rect];
    
    //  绘制边框
    UIBezierPath *ovalPath = [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:cornerRadius];
    ovalPath.lineWidth = lineWidth;
    [lineColor setStroke];
    [ovalPath stroke];
    
    //  获取结果
    UIImage *result = UIGraphicsGetImageFromCurrentImageContext();
    
    //  关闭上下文
    UIGraphicsEndImageContext();
    return result;
}

#pragma mark - 裁剪圆形图片
#pragma mark 类方法
+ (instancetype)xs_avatarImageWithName:(NSString *)name {
    return [self xs_avatarImageWithName:name backColor:[UIColor whiteColor]];
}

+ (instancetype)xs_avatarImageWithName:(NSString *)name backColor:(UIColor *)backColor {
    return [self xs_avatarImageWithName:name backColor:backColor lineWidth:0 lineColor:[UIColor whiteColor]];
}

+ (instancetype)xs_avatarImageWithName:(NSString *)name backColor:(UIColor *)backColor lineWidth:(CGFloat)lineWidth lineColor:(UIColor *)lineColor {
    
    return [self xs_avatarImage:[UIImage imageNamed:name] backColor:backColor lineWidth:lineWidth lineColor:lineColor];
}

+ (instancetype)xs_avatarImage:(UIImage *)image {
    return [self xs_avatarImage:image backColor:[UIColor whiteColor]];
}

+ (instancetype)xs_avatarImage:(UIImage *)image backColor:(UIColor *)backColor {
    return [self xs_avatarImage:image backColor:backColor lineWidth:0 lineColor:[UIColor whiteColor]];
}

+ (instancetype)xs_avatarImage:(UIImage *)image backColor:(UIColor *)backColor lineWidth:(CGFloat)lineWidth lineColor:(UIColor *)lineColor {
    return [image xs_avatarImage:backColor lineWidth:lineWidth lineColor:lineColor];
}

#pragma mark 对象方法
- (instancetype)xs_avatarImage {
    return [self xs_avatarImage:[UIColor whiteColor]];
}

- (instancetype)xs_avatarImage:(UIColor *)backColor {
    return [self xs_avatarImage:backColor lineWidth:0 lineColor:[UIColor whiteColor]];
}

- (instancetype)xs_avatarImage:(UIColor *)backColor lineWidth:(CGFloat)lineWidth lineColor:(UIColor *)lineColor {
    
    //  定义绘制区域
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.width);
    
    //  开启上下文
    UIGraphicsBeginImageContextWithOptions(self.size, YES, 0);
    
    //  设置填充颜色
    [backColor setFill];
    UIRectFill(rect);
    
    //  裁剪圆形区域
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:rect];
    [path addClip];
    
    //  绘制到指定位置
    [self drawInRect:rect];
    
    //  绘制边框
    UIBezierPath *ovalPath = [UIBezierPath bezierPathWithOvalInRect:rect];
    ovalPath.lineWidth = lineWidth;
    [lineColor setStroke];
    [ovalPath stroke];
    
    //  获取结果
    UIImage *result = UIGraphicsGetImageFromCurrentImageContext();
    
    //  关闭上下文
    UIGraphicsEndImageContext();
    return result;
}

#pragma mark - 生成纯色图片
+ (instancetype)xs_imageWithColor:(UIColor *)color {
    return [self xs_imageWithColor:color size:CGSizeMake(1, 1)];
}

+ (instancetype)xs_imageWithColor:(UIColor *)color size:(CGSize)size {
    return [self xs_imageWithColor:color size:size cornerRadius:0];
}

+ (UIImage *)xs_imageWithColor:(UIColor *)color size:(CGSize)size cornerRadius:(CGFloat)cornerRadius {
    
    //  定义绘制区域
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    
    //  开启上下文
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
    [color setFill];
    
    //  绘制路径
    UIBezierPath * path = [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:cornerRadius];
    
    [path fill];
    [path addClip];
    
    //  获取结果
    UIImage * result = UIGraphicsGetImageFromCurrentImageContext();
    
    //  关闭上下文
    UIGraphicsEndImageContext();
    return result;
}

@end
