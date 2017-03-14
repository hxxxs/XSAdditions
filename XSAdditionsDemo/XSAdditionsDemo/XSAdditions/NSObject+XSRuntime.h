//
//  NSObject+XSRuntime.h
//  XSAdditionsDemo
//
//  Created by Cedar on 2017/3/7.
//  Copyright © 2017年 Cedar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (XSRuntime)

/**
 使用字典数组创建当前类对象的数组
 
 @param array 字典数组
 */
+ (NSArray *)xs_objectsWithArray:(NSArray *)array;

/**
 返回当前类的属性数组
 */
+ (NSArray *)xs_propertiesList;

/**
 返回当前类的成员变量数组
 */
+ (NSArray *)xs_ivarsList;

@end
