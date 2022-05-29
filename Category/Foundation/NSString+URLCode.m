//
//  Created by GJ on 2021/9/28.
//

#import "NSString+URLCode.h"

@implementation NSString (URLCode)

+(NSString*)encodeString:(NSString*)unencodedString{
    NSString *encodeURL = [unencodedString stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    return encodeURL;
}

+(NSString*)decodeString:(NSString*)encodedString
{
    NSString *decodeURL = [encodedString stringByRemovingPercentEncoding];
    return decodeURL;
}

@end
