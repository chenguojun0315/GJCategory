//
//  Created by GJ on 2021/9/16.
//

#import "UIImageView+Extension.h"

@implementation UIImageView (Extension)

+(UIImageView *)createImageViewFrame:(CGRect)frame
                             bgColor:(UIColor *)bgColor
                           imageName:(NSString *)imageName{
    
    UIImageView * imageView = [[UIImageView alloc] initWithFrame:frame];
    imageView.backgroundColor = bgColor;
    imageView.image = [UIImage imageNamed:imageName];
    imageView.userInteractionEnabled = YES;
    return imageView;
}

@end
