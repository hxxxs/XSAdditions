//
//  UIViewController+XSAdditions.m
//  XSAdditionsDemo
//
//  Created by Cedar on 2017/3/7.
//  Copyright © 2017年 Cedar. All rights reserved.
//

#import "UIViewController+XSAdditions.h"

@implementation UIViewController (XSAdditions)

- (void)xs_addChildController:(UIViewController *)childController intoView:(UIView *)view  {
    
    [self addChildViewController:childController];
    
    [view addSubview:childController.view];
    
    [childController didMoveToParentViewController:self];
}

- (void)xs_callPhone:(NSString *)phone {
    
    NSString *phoneStr = [NSString stringWithFormat:@"tel:%@", phone];
    UIWebView *web = [[UIWebView alloc] init];
    [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:phoneStr]]];
    [self.view addSubview:web];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [web removeFromSuperview];
    });
}

@end
