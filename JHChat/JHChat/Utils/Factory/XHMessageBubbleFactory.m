//
//  XHMessageBubbleFactory.m
//  MessageDisplayExample
//
//  Created by HUAJIE-1 on 14-4-25.
//  Copyright (c) 2014年 曾宪华 开发团队(http://iyilunba.com ) 本人QQ:543413507 本人QQ群（142557668）. All rights reserved.
//

#import "XHMessageBubbleFactory.h"
#import "XHMacro.h"
#import "XHConfigurationHelper.h"

@implementation XHMessageBubbleFactory

+ (UIImage *)bubbleImageViewForType:(XHBubbleMessageType)type
                                  style:(XHBubbleImageViewStyle)style
                              meidaType:(XHBubbleMessageMediaType)mediaType {
    NSString *messageTypeString;
    
    switch (style) {
        case XHBubbleImageViewStyleWeChat:
            // 类似微信的
            messageTypeString = @"weChatBubble";
            break;
        default:
            break;
    }
    
    switch (type) {
        case XHBubbleMessageTypeSending:
            // 发送
            messageTypeString = [messageTypeString stringByAppendingString:@"_Sending"];
            break;
        case XHBubbleMessageTypeReceiving:
            // 接收
            messageTypeString = [messageTypeString stringByAppendingString:@"_Receiving"];
            break;
        default:
            break;
    }
    
    switch (mediaType) {
        case XHBubbleMessageMediaTypePhoto:
        case XHBubbleMessageMediaTypeVideo:
            messageTypeString = [messageTypeString stringByAppendingString:@"_Solid"];
            break;
        case XHBubbleMessageMediaTypeText:
        case XHBubbleMessageMediaTypeVoice:
        case XHBubbleMessageMediaTypeCard:
        case XHBubbleMessageMediaTypeFile:
        case XHBubbleMessageMediaCustomMsg:
        case XHBubbleMessageMediaTypeVoiceCall:
        case XHBubbleMessageMediaTypeVideoCall:
            messageTypeString = [messageTypeString stringByAppendingString:@"_Solid"];
            break;
        case XHBubbleMessageMediaTypeUrl:
        case XHBubbleMessageMediaTypeChatLog:
            messageTypeString = type == XHBubbleMessageTypeSending ? @"weChat_photo_sending1" : @"weChat_photo_recving1";
            break;
        default:
            break;
    }
    
    if (type == XHBubbleMessageTypeReceiving) {
        NSString *receivingSolidImageName = [[XHConfigurationHelper appearance].messageTableStyle objectForKey:kXHMessageTableReceivingSolidImageNameKey];
        if (receivingSolidImageName) {
            messageTypeString = receivingSolidImageName;
        }
    } else {
        NSString *sendingSolidImageName = [[XHConfigurationHelper appearance].messageTableStyle objectForKey:kXHMessageTableSendingSolidImageNameKey];
        if (sendingSolidImageName) {
            messageTypeString = sendingSolidImageName;
        }
    }
    
//    UIImage *bublleImage = [ImageManager LZGetImageByFileName:messageTypeString];
    UIImage *bublleImage = [UIImage imageNamed:messageTypeString]; // [ImageManager LZGetImageByFileName:messageTypeString];
    UIEdgeInsets bubbleImageEdgeInsets = [self bubbleImageEdgeInsetsWithStyle:style];
    UIImage *edgeBubbleImage = XH_STRETCH_IMAGE(bublleImage, bubbleImageEdgeInsets);
    return edgeBubbleImage;
}

+ (UIEdgeInsets)bubbleImageEdgeInsetsWithStyle:(XHBubbleImageViewStyle)style {
    UIEdgeInsets edgeInsets;
    switch (style) {
        case XHBubbleImageViewStyleWeChat:
            // 类似微信的
            edgeInsets = UIEdgeInsetsMake(30, 28, 85, 28);
            break;
        default:
            break;
    }
    return edgeInsets;
}


/**
 获取接收语音使用的图片
 */
+ (UIImage *)bubbleImageViewForRecvVoice:(NSString *)messageTypeString{
    UIImage *bublleImage = [ImageManager LZGetImageByFileName:messageTypeString];
    UIEdgeInsets bubbleImageEdgeInsets = [self bubbleImageEdgeInsetsWithStyle:XHBubbleImageViewStyleWeChat];
    UIImage *edgeBubbleImage = XH_STRETCH_IMAGE(bublleImage, bubbleImageEdgeInsets);
    return edgeBubbleImage;
}

@end