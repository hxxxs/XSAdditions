//
//  NSURLRequest+SSL.h
//  XSAdditionsDemo
//
//  Created by Cedar on 2017/3/23.
//  Copyright © 2017年 Cedar. All rights reserved.
//

/*
 使用在控制器中添加如下代码
 //  允许加载任何https请求
 [NSURLRequest setAllowsAnyHTTPSCertificate:YES forHost:@"https"];
 */

#import <Foundation/Foundation.h>

@interface NSURLRequest (SSL)

+(BOOL)allowsAnyHTTPSCertificateForHost:(NSString*)host;

+(void)setAllowsAnyHTTPSCertificate:(BOOL)allow forHost:(NSString*)host;

@end
