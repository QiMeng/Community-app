//
//  NSString+QM_Category.h
//  JinHuaIPAD
//
//  Created by QiMENG on 14-7-3.
//  Copyright (c) 2014年 QiMeng_LYS. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kDefaultFormatter @"yyyy-MM-dd HH:mm"

@interface NSString (QM_Category)

#pragma mark - 时间转换 ------------------------------------------------
/**
 *  默认格式 - 当前时间 - @"yyyy-MM-dd HH:mm"
 */
+ (NSString *)currentDefaultTime;
/**
 *  默认格式- 时间 - @"yyyy-MM-dd HH:mm" 
 */
+ (NSString *)defaultDate:(NSDate *)date;
/**
 *  自定义格式 将 时间 转换 字符串 ; 返回 NSString
 */
+ (NSString *)forMatter:(NSString *)matter date:(NSDate *)date;

/**
 *  自定义格式 将 字符串 转换 时间 ; 返回 NSDate
 */
+ (NSDate *)forMatter:(NSString *)matter time:(NSString *)time;
/**
 *  根据传入的时间,和 小时 数 ,调整时间 并返回 时间NSString
 */
+ (NSString *)adjustForMatter:(NSString *)matter Time:(NSString *)time afterSeconds:(int)seconds;


/**
 *  自定义时间显示格式.
 */
+ (NSString *)forMatter:(NSString *)matter toMatter:(NSString *)tomatter time:(NSString *)time;

/**
 *  比较两个时间 : ,返回:1:dt2比dt1大  ; -1: dt2比dt1小 ;0 :dt2=dt1;
 */
+ (int)compareDate:(NSDate*)dt1 withDate:(NSDate*)dt2;
+ (int)compareTime:(NSString*)dt1 withDate:(NSString*)dt2;

/**
 *  获取两个时间的时间间距
 *  @return <#return value description#>
 */
+ (double)intervalData:(NSDate *)dt1 withDate:(NSDate *)dt2;
+ (double)intervalTime:(NSString *)dt1 withDate:(NSString *)dt2;


/**
 *  当前时间超过12点.显示今天8点.不超过12点.显示昨天8点
 */
+ (NSString *)rightTime;;

/**
 *  当前时间整点
 */
+ (NSString *)wholeCurrentTime;

#pragma mark - 其他方法 ------------------------------------------------
/**
 *  生成一个唯一识别码
 */
+ (NSString*) stringWithGUID;

/**
 *  根据标题,字体大小 获取字体的长宽
 */
- (CGSize )sizeFromString:(NSString *)text andFontSize:(NSInteger)size;

/**
 *  本地路径
 */
+ (NSString *)docsPathString;




@end
