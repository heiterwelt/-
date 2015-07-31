//
//  ZHQUtil.m
//  保存数据
//
//  Created by wyzc on 15/7/8.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import "ZHQUtil.h"

@implementation ZHQUtil
+(NSString *)pathWithFilename:(NSString *)filename
{
    NSString * path=NSHomeDirectory();
    NSString * docPath=[path stringByAppendingPathComponent:@"Documents"];
    NSString * filePath=[docPath stringByAppendingPathComponent:filename];
    return filePath;
}
+(NSString *) phonetic:(NSString*)sourceString {
    NSMutableString *source = [sourceString mutableCopy];
    CFStringTransform((__bridge CFMutableStringRef)source, NULL, kCFStringTransformMandarinLatin, NO);
    CFStringTransform((__bridge CFMutableStringRef)source, NULL, kCFStringTransformStripDiacritics, NO);
    return source;
}
+(void)alertWithMessage:(NSString *)msg
{
    UIAlertView * alert=[[UIAlertView alloc]initWithTitle:@"必须告诉你" message:msg delegate:nil cancelButtonTitle:@"朕知道了" otherButtonTitles:nil, nil];
    [alert show];
}
@end
