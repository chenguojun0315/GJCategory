//
//  Created by GJ on 2021/9/16.
//

#import "UILabel+Extension.h"

@implementation UILabel (Extension)

/****** 1、苹方字体label  ******/
+ (UILabel *)createLabelFrame:(CGRect)frame
                      bgColor:(UIColor *)bgColor
                         text:(NSString *)text
                    textColor:(UIColor *)textColor
                     textFont:(UIFont *)font
                textAlignment:(NSTextAlignment)textAlignment
                numberOfLines:(NSInteger)numberOfLines{
    
    UILabel * label = [[UILabel alloc] initWithFrame:frame];
    label.backgroundColor = bgColor;
    label.text = text;
    label.textColor = textColor;
    label.font = font;
    label.textAlignment = textAlignment;
    label.numberOfLines = numberOfLines;
    //    [self getSpaceLabelHeight:text withFont:font withWidth:kScreen_WIDTH];
    return label;
}

/****** 2、设置下划线  ******/
+ (UILabel *)createLabelFrame:(CGRect)frame
                      bgColor:(UIColor *)bgColor{
    UILabel * label = [[UILabel alloc] initWithFrame:frame];
    label.backgroundColor = bgColor;
    return label;
}

/****** 3、自适应高度  ******/
#pragma Mark 计算富文本的高度
+(CGFloat)getSpaceLabelHeight:(NSString*)str withFont:(UIFont*)font withWidth:(CGFloat)width {
    NSMutableParagraphStyle *paraStyle = [[NSMutableParagraphStyle alloc] init];
    paraStyle.lineBreakMode = NSLineBreakByCharWrapping;
    paraStyle.alignment = NSTextAlignmentLeft;
    paraStyle.lineSpacing = 0;//行间距 默认为0
    paraStyle.hyphenationFactor = 1.0;
    paraStyle.firstLineHeadIndent = 0.0;
    paraStyle.paragraphSpacingBefore = 0.0;
    paraStyle.headIndent = 0;
    paraStyle.tailIndent = 0;
    NSDictionary *dic = @{NSFontAttributeName:font,
                          NSParagraphStyleAttributeName:paraStyle,
                          NSKernAttributeName:@1.0f
                          };
    
    CGSize size = [str boundingRectWithSize:CGSizeMake(width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:dic context:nil].size;
    
    return size.height;
}

/****** 4、设置字间距  ******/
- (void)setColumnSpace:(CGFloat)columnSpace
{
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
    //调整间距
//    [attributedString addAttribute:(__bridge NSString *)kCTKernAttributeName value:@(columnSpace) range:NSMakeRange(0, [attributedString length])];
    self.attributedText = attributedString;
}

/****** 5、设置行距  ******/
- (void)setRowSpace:(CGFloat)rowSpace
{
    self.numberOfLines = 0;
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
    //调整行距
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.lineSpacing = rowSpace;
    paragraphStyle.baseWritingDirection = NSWritingDirectionLeftToRight;
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [self.text length])];
    self.attributedText = attributedString;
}


@end
