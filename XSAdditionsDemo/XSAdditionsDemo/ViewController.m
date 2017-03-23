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

    CGRect frame = CGRectMake(100, 100, 100, 100);
    
    UIImage *normalImage = [UIImage xs_dashImage:16 size:frame.size lineColor:[UIColor xs_colorWithHex:0x9d9d9d] lineWidth:1];
    UIImage *selectedImage = [UIImage xs_imageWithColor:[UIColor xs_colorWithHex:0x2ea7e0] size:frame.size cornerRadius:16];

    UIButton *btn = [UIButton xs_textButton:@"按钮" fontSize:15 normalColor:[UIColor xs_colorWithHex:0x9d9d9d] selectedColor:[UIColor whiteColor] normalImage:normalImage selectedImage:selectedImage];
    btn.frame = frame;
    [self.view addSubview:btn];
}

- (void)clickBackBtn {
    NSLog(@"111111111111");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
