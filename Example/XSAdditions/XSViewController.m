//
//  XSViewController.m
//  XSAdditions
//
//  Created by git on 04/13/2018.
//  Copyright (c) 2018 git. All rights reserved.
//

#import "XSViewController.h"
#import "XSAdditions.h"

@interface XSViewController ()

@property (nonatomic, strong) UIButton *button;

@end

@implementation XSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _button = [UIButton xs_button:@"hello world!" color:UIColor.blueColor];
    _button.frame = CGRectMake(100, 100, 100, 40);
    _button.backgroundColor = [UIColor brownColor];
    [self.view addSubview:_button];
    
    [_button addTarget:self action:@selector(clickButton) forControlEvents:UIControlEventTouchUpInside];
}

- (void)clickButton {
    [_button xs_showRedDot];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [_button xs_hiddenRedDot];
    
}

@end
