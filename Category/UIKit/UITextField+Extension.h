//
//  Created by GJ on 2022/3/6.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITextField (Extension)

/**
    frame + 背景颜色 + 占位符 + 光标颜色 + 文字颜+ 文字颜色 + 文字大小 + 对齐方式 + 边框样式
 
 */
+ (UITextField *)createTextFieldFrame:(CGRect)frame
                  withBackgroundColor:(UIColor *)backgroundColor
                      withPlaceholder:(NSString *)placeholder
                        withTintColor:(UIColor *)tintColor
                             withText:(NSString *)text
                        withTextColor:(UIColor *)textColor
                         withTextFont:(UIFont *)textFont
                    withTextAlignment:(NSTextAlignment)textAlignment
                      withBorderStyle:(UITextBorderStyle)borderStyle;

@end

NS_ASSUME_NONNULL_END
