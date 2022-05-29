//
//  Created by GJ on 2021/9/28.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (ReplaceSpace)

//去除掉首尾的空白字符 && 换行字符替换为 ','
+ (NSString *)replaceSpaceAndReturnString:(NSString *)input;

//去除掉首尾的空白字符
+ (NSString *)replaceSpaceReturnString:(NSString *)input;

@end

NS_ASSUME_NONNULL_END
