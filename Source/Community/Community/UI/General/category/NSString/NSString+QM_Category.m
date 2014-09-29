//
//  NSString+QM_Category.m
//  JinHuaIPAD
//
//  Created by strongsoft on 14-7-3.
//  Copyright (c) 2014年 QiMeng_LYS. All rights reserved.
//

#import "NSString+QM_Category.h"
#import "QMCategory.h"


@implementation NSString (QM_Category)

#pragma mark - 时间转换 ------------------------------------------------
+ (NSDateFormatter *)setForMatter:(NSString *)format {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:format];
    QMAutorelease(formatter);
    return formatter;
}
#pragma mark - 默认格式 - 当前时间 - @"yyyy-MM-dd HH:mm"
+ (NSString *)currentDefaultTime {
    return [self forMatter:kDefaultFormatter date:[NSDate date] ];
}
#pragma mark - 默认格式- 时间 - @"yyyy-MM-dd HH:mm"
+ (NSString *)defaultDate:(NSDate *)date {
    return [self forMatter:kDefaultFormatter date:date];
}
#pragma mark - 自定义格式 将 时间 转换 字符串 
+ (NSString *)forMatter:(NSString *)matter date:(NSDate *)date {
    return [[NSString setForMatter:matter] stringFromDate:date];
}

#pragma mark - 自定义格式 将 字符串 转换 时间
+ (NSDate *)forMatter:(NSString *)matter time:(NSString *)time {
    return [[NSString setForMatter:matter] dateFromString:time];
}

+ (NSString *)forMatter:(NSString *)matter toMatter:(NSString *)tomatter time:(NSString *)time {
    NSDate * date = [NSString forMatter:matter time:time];
    return [NSString forMatter:tomatter date:date];
}


#pragma mark - 根据传入的时间,和 小时 数 ,调整时间 并返回 时间NSString
+ (NSString *)adjustForMatter:(NSString *)matter Time:(NSString *)time afterSeconds:(int)seconds {
    
    NSDate* date = [[NSString setForMatter:matter] dateFromString:time];
    if (!date) {
        return nil;
    }
    NSTimeInterval interval = [date timeIntervalSince1970];
    interval = interval + seconds;
    NSDate *timeDate = [NSDate dateWithTimeIntervalSince1970:interval];
    NSString* dateString = [[NSString setForMatter:matter] stringFromDate:timeDate];
    return dateString;
    
}

#pragma mark - 比较两个时间
+ (int)compareDate:(NSDate*)dt1 withDate:(NSDate*)dt2{
    int ci;
    NSComparisonResult result = [dt1 compare:dt2];
    switch (result)
    {
            //dt2比dt1大
        case NSOrderedAscending: ci=1; break;
            //dt2比dt1小
        case NSOrderedDescending: ci=-1; break;
            //dt2=dt1
        case NSOrderedSame: ci=0; break;
        default: NSLog(@"erorr dates %@, %@", dt2, dt1); break;
    }
    return ci;
}
+ (int)compareTime:(NSString*)dt1 withDate:(NSString*)dt2 {
    NSDate *date1 = [NSString forMatter:kDefaultFormatter time:dt1];
    NSDate *date2 = [NSString forMatter:kDefaultFormatter time:dt2];
    
    return [NSString compareDate:date1 withDate:date2];
}

#pragma mark - 获取两个时间的时间间距
+ (double)intervalData:(NSDate *)dt1 withDate:(NSDate *)dt2{
    
    NSTimeInterval interval = [dt1 timeIntervalSinceDate:dt2];
    
    return interval;
}
+ (double)intervalTime:(NSString *)dt1 withDate:(NSString *)dt2 {
    
    return [NSString intervalData:[NSString forMatter:kDefaultFormatter time:dt1]
                         withDate:[NSString forMatter:kDefaultFormatter time:dt2]];
    
}

#pragma mark - 当前时间超过12点.显示今天8点.不超过12点.显示昨天8点
+ (NSString *)rightTime {
    
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSInteger unitFlags = NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit | NSWeekdayCalendarUnit |
    NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit;
    int year;
    int month;
    int day;
    int hour;
    int minute;
    
    NSDateComponents* comps  = [calendar components:unitFlags fromDate:[NSDate date]];
    year = [comps year];
    month = [comps month];
    day = [comps day];
    hour = [comps hour];
    minute = [comps minute];
    
    NSString * str = [NSString forMatter:@"yyyy-MM-dd" date:[NSDate date]];
    
    str = [str stringByAppendingString:@" 08:00"];
    
    if (hour <12) {
        str = [NSString adjustForMatter:kDefaultFormatter Time:str afterSeconds:-24*60*60];

    }
    
    return str;
    
}
#pragma mark - 当前时间整点
+ (NSString *)wholeCurrentTime {

     NSString * str = [NSString forMatter:@"yyyy-MM-dd HH:00" date:[NSDate date]];
    
    return str;

}



#pragma mark - 其他方法 ------------------------------------------------
#pragma mark - 生成一个唯一识别码
+ (NSString*) stringWithGUID {
    CFUUIDRef uuidObj = CFUUIDCreate(nil);
    NSString *uuidString = (NSString *)CFBridgingRelease(CFUUIDCreateString(nil, uuidObj));
    CFRelease(uuidObj);
    return uuidString ;
}
#pragma mark - 根据标题,字体大小 获取字体的长宽
- (CGSize )sizeFromString:(NSString *)text andFontSize:(NSInteger)size  {
    CGSize textSize = [text sizeWithFont:[UIFont boldSystemFontOfSize:size]];
    return textSize;
}



#pragma mark - 本地路径
+ (NSString *)docsPathString {
    NSString* docsdir = [NSSearchPathForDirectoriesInDomains( NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    return docsdir;
}

@end
