//
//  Created by GJ on 2021/9/16.
//

#import "UIButton+Extension.h"

@implementation UIButton (Extension)

/****** 1、只有背景颜色  ******/
+ (UIButton *)createBtnFrame:(CGRect)frame
                         tag:(NSInteger)tag
                     bgColor:(UIColor *)bgColor
                      target:(id)target
                      action:(SEL)action{
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = frame;
    btn.tag = tag;
    btn.backgroundColor = bgColor;
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return btn;
}

/****** 2、背景颜色+图片  ******/
+ (UIButton *)createBtnFrame:(CGRect)frame
                         tag:(NSInteger)tag
                     bgColor:(UIColor *)bgColor
                setImageName:(NSString *)imageName
                      target:(id)target
                      action:(SEL)action{
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = frame;
    btn.tag = tag;
    btn.backgroundColor = bgColor;
    [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return btn;
}

/****** 3、背景颜色+背景图片  ******/
+ (UIButton *)createBtnFrame:(CGRect)frame
                         tag:(NSInteger)tag
                     bgColor:(UIColor *)bgColor
                 bgImageName:(NSString *)imageName
                      target:(id)target
                      action:(SEL)action{
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = frame;
    btn.tag = tag;
    btn.backgroundColor = bgColor;
    [btn setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return btn;
}

/****** 4、背景颜色+标题+标题颜色+标题字号  ******/
+ (UIButton *)createBtnFrame:(CGRect)frame
                         tag:(NSInteger)tag
                     bgColor:(UIColor *)bgColor
                       title:(NSString *)title
                  titleColor:(UIColor *)titleColor
              titleLabelFont:(UIFont *)font
                      target:(id)target
                      action:(SEL)action{
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = frame;
    btn.tag = tag;
    btn.backgroundColor = bgColor;
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:titleColor forState:UIControlStateNormal];
    btn.titleLabel.font = font;
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return btn;
}

@end
