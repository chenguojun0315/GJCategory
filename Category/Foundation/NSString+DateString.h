//
//  Created by GJ on 2021/9/28.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (DateString)
/*
 一天以内：HH:mm
 超过一天：MM-dd
 超过一年：yyyy-MM-dd
 */
+ (NSString *)formatterYearTime:(NSString *)createTime;
/*
 一天以内：HH:mm
 超过一天：MM/dd
 超过一年：yyyy/MM/dd
 */
+ (NSString *)formatterMonthTime:(NSString *)createTime;
/*
 yyyy-MM-dd HH:mm
 */
+ (NSString *)formatterAllTime:(NSString *)createTime;
/*
 input : 20180202
 yyyy年MM月dd号
 */
+ (NSString *)formatterChineseTime:(NSString *)createTime;

/*
 exa：yyyy/MM/dd HH:mm
 */
+ (NSString *)formatterAllTimeTT:(NSString *)createTime;

/*
 yyyy年MM月dd号
 */
+ (NSString *)formatterHanYuTime:(NSString *)createTime;

@end

NS_ASSUME_NONNULL_END
