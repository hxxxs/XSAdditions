//
//  ViewController.m
//  XSAdditionsDemo
//
//  Created by Cedar on 2017/3/7.
//  Copyright © 2017年 Cedar. All rights reserved.
//

#import "ViewController.h"
#import "XSAdditions.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString *str = [NSString xs_separatedDigitString:@"1,000.21"];
    NSLog(@"%@", str);
    
    NSString *str2 = [NSString xs_separatedDigitString:@"1，000.21"];
    NSLog(@"%@", str2);
    
    NSString *str3 = [NSString xs_separatedDigitString:@"1000.21"];
    NSLog(@"%@", str3);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
