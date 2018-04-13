//
//  NSDate+XSAdditions.m
//  XSAdditionsDemo
//
//  Created by hxs on 2017/7/1.
//  Copyright © 2017年 Cedar. All rights reserved.
//

#import "NSDate+XSAdditions.h"

@implementation NSDate (XSAdditions)

- (NSDictionary *)xs_lunar {
    NSCalendar *cal = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierChinese];
    NSInteger year = [cal component:NSCalendarUnitYear fromDate:self];
    NSInteger month = [cal component:NSCalendarUnitMonth fromDate:self];
    NSInteger day = [cal component:NSCalendarUnitDay fromDate:self];
    
    /// 生肖
    NSArray *Zodiacs = @[@"鼠", @"牛", @"虎", @"兔", @"龙", @"蛇", @"马", @"羊", @"猴", @"鸡", @"狗", @"猪"];
    /// 天干
    NSArray *HeavenlyStems = @[@"甲", @"乙", @"丙", @"丁", @"戊", @"己", @"庚", @"辛", @"壬", @"癸"];
    /// 地支
    NSArray *EarthlyBranches = @[@"子", @"丑", @"寅", @"卯", @"辰", @"巳", @"午", @"未", @"申", @"酉", @"戌", @"亥"];
    /// 月
    NSArray *Months = @[@"正月", @"二月", @"三月", @"四月", @"五月", @"六月",
                        @"七月", @"八月", @"九月", @"十月", @"冬月", @"腊月"];
    /// 日
    NSArray *Days = @[@"初一", @"初二", @"初三", @"初四", @"初五", @"初六", @"初七", @"初八", @"初九", @"初十",
                        @"十一", @"十二", @"十三", @"十四", @"十五", @"十六", @"十七", @"十八", @"十九", @"二十",
                      @"廿一", @"廿二", @"廿三", @"廿四", @"廿五", @"廿六", @"廿七", @"廿八", @"廿九", @"三十"];
    
    //  天干
    NSInteger heavenlyStemIndex = (year - 1) % HeavenlyStems.count;
    NSString *heavenlyStem = HeavenlyStems[heavenlyStemIndex];
    
    //  地支
    NSInteger earthlyBrancheIndex = (year - 1) % EarthlyBranches.count;
    NSString *earthlyBranche = EarthlyBranches[earthlyBrancheIndex];
    NSString *yearString = [NSString stringWithFormat:@"%@%@", heavenlyStem, earthlyBranche];
    
    //  生肖
    NSInteger zodiacIndex = (year - 1) % Zodiacs.count;
    NSString *zodiac = Zodiacs[zodiacIndex];
    
    //  月
    NSInteger monthIndex = (month - 1) % Months.count;
    NSString *monthString = Months[monthIndex];
    
    //  日
    NSInteger dayIndex = (day - 1) % Days.count;
    NSString *dayString = Days[dayIndex];
    
    return @{@"year": yearString,
             @"zodiac": zodiac,
             @"month": monthString,
             @"day": dayString};
}

+ (instancetype)xs_customDate:(NSUInteger)year
                        month:(NSUInteger)month
                          day:(NSUInteger)day {
    NSDateComponents *comp = [[NSDateComponents alloc] init];
    comp.year = year;
    comp.month = month;
    comp.day = day;
    return [[[NSCalendar alloc]
             initWithCalendarIdentifier:NSCalendarIdentifierGregorian]
            dateFromComponents:comp];
}

- (instancetype)xs_previousMonth {
    NSDateComponents *comp = [[NSDateComponents alloc] init];
    comp.month = -1;
    return [[[NSCalendar alloc]
             initWithCalendarIdentifier:NSCalendarIdentifierGregorian]
            dateByAddingComponents:comp
            toDate:self
            options:0];
}

- (instancetype)xs_nextMonth {
    NSDateComponents *comp = [[NSDateComponents alloc] init];
    comp.month = 1;
    return [[[NSCalendar alloc]
             initWithCalendarIdentifier:NSCalendarIdentifierGregorian]
            dateByAddingComponents:comp
            toDate:self
            options:0];
}

- (instancetype)xs_firstDayOfMonth {
    NSCalendar *cal = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSInteger count = [cal component:NSCalendarUnitDay fromDate:self];
    NSDateComponents *comp = [[NSDateComponents alloc] init];
    comp.day = -count + 1;
    return [cal dateByAddingComponents:comp
            toDate:self
            options:0];
}

- (NSUInteger)xs_totaldaysInMonth {
    NSCalendar *cal = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSRange range = [cal rangeOfUnit:NSCalendarUnitDay inUnit:NSCalendarUnitMonth forDate:self];
    return range.length;
}

- (NSUInteger)xs_totalWeeksInMonth {
    NSCalendar *cal = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSRange range = [cal rangeOfUnit:NSCalendarUnitWeekOfMonth inUnit:NSCalendarUnitMonth forDate:self];
    return range.length;
}

- (NSInteger)xs_day {
    return [[[NSCalendar alloc]
             initWithCalendarIdentifier:NSCalendarIdentifierGregorian]
            component:NSCalendarUnitDay
            fromDate:self];
}

- (NSInteger)xs_month {
    return [[[NSCalendar alloc]
             initWithCalendarIdentifier:NSCalendarIdentifierGregorian]
            component:NSCalendarUnitMonth
            fromDate:self];
}

- (NSInteger)xs_year {
    return [[[NSCalendar alloc]
             initWithCalendarIdentifier:NSCalendarIdentifierGregorian]
            component:NSCalendarUnitYear
            fromDate:self];
}

@end
