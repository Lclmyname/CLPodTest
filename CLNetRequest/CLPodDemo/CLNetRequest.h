//
//  CLNetRequest.h
//  CLPodTest
//
//  Created by apple on 16/9/13.
//  Copyright © 2016年 刘朝龙. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

// request content types
#define Content_TEXT    @"text/plain"
#define Content_HTML    @"text/html"
#define Content_TEXTXML @"text/xml"

#define Content_JSON    @"application/json"
#define Content_XML     @"application/xml"
#define Content_SOAPXML @"application/soap+xml"


typedef NS_ENUM(NSInteger, RequestMethod) {
    RequestMethodGet,
    RequestMethodPost
};

typedef NS_ENUM(NSInteger, RequestContent) {
    RequestContentJSON,
    RequestContentXML,
    RequestContentText,
    RequestContentHTML
};
/**
 *  请求回调
 *
 *  @param success     请求是否成功
 *  @param responseObj 请求成功返回数据
 *  @param error       请求失败的错误描述
 */
typedef void(^RequestResult)(BOOL success, id responseObj, NSError *error);

@interface CLNetRequest : NSObject

+ (void)requestWithURL:(NSString *)url parameters:(id)parameters method:(RequestMethod)method content:(RequestContent)content result:(RequestResult)result;

@end
