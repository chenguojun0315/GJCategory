//
//  Created by GJ on 2021/9/16.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (Extension)

/****** 1、苹方字体label  ******/
+ (UILabel *)createLabelFrame:(CGRect)frame
                      bgColor:(UIColor *)bgColor
                         text:(NSString *)text
                    textColor:(UIColor *)textColor
                     textFont:(UIFont *)font
                textAlignment:(NSTextAlignment)textAlignment
                numberOfLines:(NSInteger)numberOfLines;

/****** 2、设置下划线  ******/
+ (UILabel *)createLabelFrame:(CGRect)frame
                      bgColor:(UIColor *)bgColor;

/****** 3、自适应高度  ******/
+(CGFloat)getSpaceLabelHeight:(NSString*)str withFont:(UIFont*)font withWidth:(CGFloat)width;

/****** 4、设置字间距  ******/
- (void)setColumnSpace:(CGFloat)columnSpace;

/****** 5、设置行距  ******/
- (void)setRowSpace:(CGFloat)rowSpace;

@end

NS_ASSUME_NONNULL_END
