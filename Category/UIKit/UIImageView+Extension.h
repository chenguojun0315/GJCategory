//
//  Created by GJ on 2021/9/16.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImageView (Extension)

+(UIImageView *)createImageViewFrame:(CGRect)frame
                             bgColor:(UIColor *)bgColor
                           imageName:(NSString *)imageName;

@end

NS_ASSUME_NONNULL_END
