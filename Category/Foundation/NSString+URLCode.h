//
//  Created by GJ on 2021/9/28.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (URLCode)

+(NSString*)encodeString:(NSString*)unencodedString;

+(NSString*)decodeString:(NSString*)encodedString;

@end

NS_ASSUME_NONNULL_END
