//
//  AppTempParse.h
//  LeadingCloud
//
//  Created by dfl on 17/3/7.
//  Copyright © 2017年 LeadingSoft. All rights reserved.
/************************************************************
 Author:  dfl
 Date：   2017-03-07
 Version: 1.0
 Description: 临时消息--应用
 History:
 <author>  <time>   <version >   <desc>
 ***********************************************************/

#import "MsgBaseParse.h"

@interface AppTempParse : MsgBaseParse

/**
 *  获取单一实例
 *
 *  @return 实例对象
 */
+(AppTempParse *)shareInstance;

#pragma mark - 解析临时通知数据

/**
 *  解析临时通知数据
 *
 *  @param dataDic 数据
 */
-(BOOL)parse:(NSMutableDictionary *)dataDic;
@end