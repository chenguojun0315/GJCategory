//
//  Created by GJ on 2021/9/16.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (Extension)

/****** 1、只有背景颜色  ******/
+ (UIButton *)createBtnFrame:(CGRect)frame
                         tag:(NSInteger)tag
                     bgColor:(UIColor *)bgColor
                      target:(id)target
                      action:(SEL)action;

/****** 2、背景颜色+图片  ******/
+ (UIButton *)createBtnFrame:(CGRect)frame
                         tag:(NSInteger)tag
                     bgColor:(UIColor *)bgColor
                setImageName:(NSString *)imageName
                      target:(id)target
                      action:(SEL)action;

/****** 3、背景颜色+背景图片  ******/
+ (UIButton *)createBtnFrame:(CGRect)frame
                         tag:(NSInteger)tag
                     bgColor:(UIColor *)bgColor
                 bgImageName:(NSString *)imageName
                      target:(id)target
                      action:(SEL)action;

/****** 4、背景颜色+标题+标题颜色+标题字号  ******/
+ (UIButton *)createBtnFrame:(CGRect)frame
                         tag:(NSInteger)tag
                     bgColor:(UIColor *)bgColor
                       title:(NSString *)title
                  titleColor:(UIColor *)titleColor
              titleLabelFont:(UIFont *)font
                      target:(id)target
                      action:(SEL)action;

@end

NS_ASSUME_NONNULL_END
