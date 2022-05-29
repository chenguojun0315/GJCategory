//
//  Created by GJ on 2022/3/6.
//

#import "UITextField+Extension.h"

@implementation UITextField (Extension)

+ (UITextField *)createTextFieldFrame:(CGRect)frame
                  withBackgroundColor:(UIColor *)backgroundColor
                      withPlaceholder:(NSString *)placeholder
                        withTintColor:(UIColor *)tintColor
                             withText:(NSString *)text
                        withTextColor:(UIColor *)textColor
                         withTextFont:(UIFont *)textFont
                    withTextAlignment:(NSTextAlignment)textAlignment
                      withBorderStyle:(UITextBorderStyle)borderStyle {
    UITextField * textField = [[UITextField alloc] initWithFrame:frame];
    textField.backgroundColor = backgroundColor;
    textField.placeholder = placeholder;
    textField.tintColor = tintColor;
    textField.text = text;
    textField.textColor = textColor;
    textField.font = textFont;
    textField.textAlignment = textAlignment;
    textField.borderStyle = borderStyle;
    
    return textField;
}

@end
