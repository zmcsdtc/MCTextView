//
//  NSString+Common.h
//  SmallBee_Client
//
//  Created by  www.6dao.cc on 15/10/29.
//  Copyright © 2015年  www.6dao.cc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface NSString (Common)
// 获取Documents路径
+ (NSString *)documentPath;

// 获取缓存路径
+ (NSString *)cachePath;

+ (NSString *)imageCachePath;



//! 是否是合法邮箱
- (BOOL)isValidEmail;
//! 是否是合法号码
- (BOOL)isValidPhoneNumber;
//! 是否是合法的18位身份证号码
- (BOOL)isValidPersonID;
/**
 * 功能:判断是否在地区码内
 * 参数:地区码
 */
- (BOOL)areaCode:(NSString *)code;
/**
 *  是否整形
 */
- (BOOL)isPureInt:(NSString*)string;
/**
 *  是否浮点型
 */
- (BOOL)isPureFloat:(NSString*)string;

//! 根据文件名返回路径
+ (NSString *)pathWithFileName:(NSString *)fileName;
+ (NSString *)pathWithFileName:(NSString *)fileName ofType:(NSString *)type;

// 根据秒数返回日期
+ (NSString *)dateWithSeconds:(NSUInteger)seconds;

/**
 *  字符串转化成日期，再转化失败的情况下保证程序不崩溃
 *
 *  @return 转化失败后，返回当前时间
 */
-(NSDate *)dateFromString;

/**
 *  获取当前的时间
 */
+(NSString*)getCurrentTimeWwithdateformatter:(NSString*)dateformatter;

/**
 *  根据字体和字符串内容宽度确定字符串的高度
 */
+(CGFloat)heightByString:(NSString*)text font:(UIFont*)font width:(CGFloat)width;

/**
 *  根据字体和字符串内容宽度确定字符串的宽度
 */
+(CGFloat)widthByString:(NSString*)text font:(UIFont*)font height:(CGFloat)height;
/**
 *  MD5 加密
 */
- (NSString *)md5Str;

@end
