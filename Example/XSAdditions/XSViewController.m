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
    
    UITextView *tv = [[UITextView alloc] initWithFrame:CGRectMake(0, 150, self.view.frame.size.width, 100)];
    tv.placeholder = @"我是一个展位富豪";
    [self.view addSubview:tv];
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

-(NSString *)toLower:(NSString *)str{
    for (NSInteger i=0; i<str.length; i++) {
        if ([str characterAtIndex:i]>='A'&[str characterAtIndex:i]<='Z') {
            //A  65  a  97
            char  temp=[str characterAtIndex:i]+32;
            NSRange range=NSMakeRange(i, 1);
            str=[str stringByReplacingCharactersInRange:range withString:[NSString stringWithFormat:@"%c",temp]];
        }
    }
    return str;
}

-(NSString *)toUpper:(NSString *)str{
    for (NSInteger i=0; i<str.length; i++) {
        if ([str characterAtIndex:i]>='a'&[str characterAtIndex:i]<='z') {
            //A  65  a  97
            char  temp=[str characterAtIndex:i]-32;
            NSRange range=NSMakeRange(i, 1);
            str=[str stringByReplacingCharactersInRange:range withString:[NSString stringWithFormat:@"%c",temp]];
        }
    }
    return str;
}

@end
