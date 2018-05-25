//
//  UITextView+XSAdditions.h
//  Pods-XSAdditions_Example
//
//  Created by hxs on 2018/5/25.
//

#import <UIKit/UIKit.h>

@interface UITextView (XSAdditions)

/**
 占位文字（如果需要设置text需要在设置完text以后重新设置占位文字）
 */
@property (nonatomic, copy) NSString *placeholder;

@end
