//
//  NSDate+XSAdditions.h
//  XSAdditionsDemo
//
//  Created by hxs on 2017/7/1.
//  Copyright © 2017年 Cedar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (XSAdditions)

/**
 农历
 */
- (NSDictionary *)xs_lunar;

/**
 自定义日期

 @param year 年
 @param month 月
 @param day 日
 @return 日期
 */
+ (NSDate *)xs_customDate:(NSUInteger)year
                        month:(NSUInteger)month
                          day:(NSUInteger)day;

/**
 上个月
 */
- (NSDate *)xs_previousMonth;

/**
 下个月
 */
- (NSDate *)xs_nextMonth;

/**
 当月第一天
 */
- (NSDate *)xs_firstDayOfMonth;

/**
 总天数
 */
- (NSUInteger)xs_totaldaysInMonth;

/**
 总周数
 */
- (NSUInteger)xs_totalWeeksInMonth;

/**
 日
 */
- (NSInteger)xs_day;

/**
 月
 */
- (NSInteger)xs_month;

/**
 年
 */
- (NSInteger)xs_year;
@end
