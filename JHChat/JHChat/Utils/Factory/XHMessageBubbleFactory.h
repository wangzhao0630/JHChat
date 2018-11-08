//
//  XHMessageBubbleFactory.h
//  MessageDisplayExample
//
//  Created by HUAJIE-1 on 14-4-25.
//  Copyright (c) 2014年 曾宪华 开发团队(http://iyilunba.com ) 本人QQ:543413507 本人QQ群（142557668）. All rights reserved.
//

#import <Foundation/Foundation.h>


#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, XHBubbleMessageType) {
    XHBubbleMessageTypeSending = 0, // 发送
    XHBubbleMessageTypeReceiving // 接收
};

typedef NS_ENUM(NSUInteger, XHBubbleImageViewStyle) {
    XHBubbleImageViewStyleWeChat = 0
};

typedef NS_ENUM(NSInteger, XHBubbleMessageMediaType) {
    XHBubbleMessageMediaTypeText = 0,
    XHBubbleMessageMediaTypePhoto = 1,
    XHBubbleMessageMediaTypeVideo = 2,
    XHBubbleMessageMediaTypeVoice = 3,
    XHBubbleMessageMediaTypeEmotion = 4,
    XHBubbleMessageMediaTypeLocalPosition = 5,
    XHBubbleMessageMediaTypeCard = 6,
    XHBubbleMessageMediaTypeFile = 7,
    XHBubbleMessageMediaSystemMsg = 8,
    XHBubbleMessageMediaTypeVoiceCall = 9,
    XHBubbleMessageMediaTypeVideoCall = 10,
    XHBubbleMessageMediaCustomMsg = 101,
    XHBubbleMessageMediaTypeUrl = 102,
    XHBubbleMessageMediaTypeShare = 103,
    XHBubbleMessageMediaTypeConsultNotice = 104,
    XHBubbleMessageMediaTypeChatLog = 105,
};

typedef NS_ENUM(NSInteger, XHBubbleMessageMenuSelecteType) {
    XHBubbleMessageMenuSelecteTypeTextCopy = 0,
    XHBubbleMessageMenuSelecteTypeTextTranspond = 1,
    XHBubbleMessageMenuSelecteTypeTextFavorites = 2,
    XHBubbleMessageMenuSelecteTypeTextMore = 3,
    
    XHBubbleMessageMenuSelecteTypePhotoCopy = 4,
    XHBubbleMessageMenuSelecteTypePhotoTranspond = 5,
    XHBubbleMessageMenuSelecteTypePhotoFavorites = 6,
    XHBubbleMessageMenuSelecteTypePhotoMore = 7,
    
    XHBubbleMessageMenuSelecteTypeVideoTranspond = 8,
    XHBubbleMessageMenuSelecteTypeVideoFavorites = 9,
    XHBubbleMessageMenuSelecteTypeVideoMore = 10,
    
    XHBubbleMessageMenuSelecteTypeVoicePlay = 11,
    XHBubbleMessageMenuSelecteTypeVoiceFavorites = 12,
    XHBubbleMessageMenuSelecteTypeVoiceTurnToText = 13,
    XHBubbleMessageMenuSelecteTypeVoiceMore = 14,
};

@interface XHMessageBubbleFactory : NSObject

+ (UIImage *)bubbleImageViewForType:(XHBubbleMessageType)type
                                  style:(XHBubbleImageViewStyle)style
                              meidaType:(XHBubbleMessageMediaType)mediaType;


/**
 获取接收语音使用的图片
 */
+ (UIImage *)bubbleImageViewForRecvVoice:(NSString *)messageTypeString;

@end
