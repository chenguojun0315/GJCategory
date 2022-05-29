//
//  Created by GJ on 2021/9/28.
//

#import "NSString+ReplaceSpace.h"

@implementation NSString (ReplaceSpace)

//去除掉首尾的空白字符 && 换行字符替换为 ','
+ (NSString *)replaceSpaceAndReturnString:(NSString *)input
{
    input = [input stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    input = [input stringByReplacingOccurrencesOfString:@"\r" withString:@","];
    return [input stringByReplacingOccurrencesOfString:@"\n" withString:@""];
}

+ (NSString *)replaceSpaceReturnString:(NSString *)input
{
    input = [input stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return [input stringByReplacingOccurrencesOfString:@"\n" withString:@""];
}

@end
