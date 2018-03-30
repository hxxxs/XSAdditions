//
//  NSURL+XSAdditions.m
//  XSAdditionsDemo
//
//  Created by huangxuesong on 2018/3/14.
//  Copyright © 2018年 Cedar. All rights reserved.
//

#import "NSURL+XSAdditions.h"
#import <objc/runtime.h>
#import "NSString+STRegex.h"

@implementation NSURL (XSAdditions)

+ (void)load {
    
    //  获取方法
    Method url = class_getClassMethod(self, @selector(URLWithString:));
    Method xs_url = class_getClassMethod(self, @selector(xs_URLWithString:));
    
    method_exchangeImplementations(url, xs_url);
}

+ (instancetype)xs_URLWithString:(NSString *)URLString {
    
    NSString *urlString = [URLString stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    NSString *encodedString = (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault,
                                                                                                    (CFStringRef)urlString,
                                                                                                    (CFStringRef)@"!$&'()*+,-./:;=?@_~%#[]",
                                                                                                    NULL,
                                                                                                    kCFStringEncodingUTF8));
    
    return [NSURL xs_URLWithString:encodedString];
}

@end
