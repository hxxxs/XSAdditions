//
//  NSURLRequest+SSL.m
//  XSAdditionsDemo
//
//  Created by Cedar on 2017/3/23.
//  Copyright © 2017年 Cedar. All rights reserved.
//

#import "NSURLRequest+SSL.h"

@implementation NSURLRequest (SSL)

+(BOOL)allowsAnyHTTPSCertificateForHost:(NSString*)host {
    return YES;
}

+(void)setAllowsAnyHTTPSCertificate:(BOOL)allow forHost:(NSString*)host {
}

@end
