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
    
    
}

- (void)logNSDate {
    NSDate *date =  [NSDate xs_customDate:2017 month:7 day:22];
    NSLog(@"%@", date);
    NSLog(@"%ld", (long)[date xs_day]);
    NSLog(@"%ld", (long)[date xs_month]);
    NSLog(@"%ld", (long)[date xs_year]);
    NSLog(@"%@", [date xs_nextMonth]);
    NSLog(@"%@", [date xs_previousMonth]);
    NSLog(@"%ld", (long)[date xs_totaldaysInMonth]);
    NSLog(@"%ld", (long)[date xs_totalWeeksInMonth]);
    NSLog(@"%@", [date xs_lunar]);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"发现新版本 \n v2.2.7" message:@"1.这是一个什么鬼啊\n2.这又是一个什么鬼啊\n3.这还是一个鬼啊" preferredStyle:UIAlertControllerStyleAlert];
//    
//    UIAlertAction *action = [UIAlertAction actionWithTitle:@"立即更新" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//        NSLog(@"hahah");
//    }];
//    
//    [alert addAction:action];
//    [self presentViewController:alert animated:YES completion:nil];
    NSDate * today = [NSDate date];
    NSTimeZone *zone = [NSTimeZone systemTimeZone];
    NSInteger interval = [zone secondsFromGMTForDate:today];
    NSDate *localeDate = [today dateByAddingTimeInterval:interval];
    NSLog(@"%@", localeDate);
    // 时间转换成时间戳
    NSString *timeSp = [NSString stringWithFormat:@"%ld",(long)[localeDate timeIntervalSince1970]];
    NSLog(@"timeSp : %@", timeSp);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
