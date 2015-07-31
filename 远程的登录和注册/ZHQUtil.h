//
//  ZHQUtil.h
//  保存数据
//
//  Created by wyzc on 15/7/8.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZHQUtil : NSObject
+(NSString *)pathWithFilename:(NSString *)filename;
+(NSString *) phonetic:(NSString*)sourceString;
+(void)alertWithMessage:(NSString *)msg;
@end
