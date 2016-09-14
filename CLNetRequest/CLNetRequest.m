//
//  CLNetRequest.m
//  CLPodTest
//
//  Created by apple on 16/9/13.
//  Copyright © 2016年 刘朝龙. All rights reserved.
//

#import "CLNetRequest.h"

@implementation CLNetRequest

+ (void)requestWithURL:(NSString *)url parameters:(id)parameters method:(RequestMethod)method content:(RequestContent)content result:(RequestResult)result
{
    AFHTTPSessionManager *sessionManager = [AFHTTPSessionManager manager];
    switch (content) {
        case RequestContentHTML:
        {
            sessionManager.responseSerializer = [AFHTTPResponseSerializer serializer];
            [sessionManager.responseSerializer setAcceptableContentTypes:[NSSet setWithObjects:Content_HTML, Content_XML, nil]];
        }
            break;
        case RequestContentJSON:
        {
            sessionManager.responseSerializer = [AFHTTPResponseSerializer serializer];
            [sessionManager.responseSerializer setAcceptableContentTypes:[NSSet setWithObjects:Content_HTML, Content_JSON, nil]];
        }
            break;
        case RequestContentText:
        {
            sessionManager.responseSerializer = [AFHTTPResponseSerializer serializer];
            [sessionManager.responseSerializer setAcceptableContentTypes:[NSSet setWithObjects:Content_TEXT, nil]];
        }
            break;
        case RequestContentXML:
        {
            sessionManager.responseSerializer = [AFHTTPResponseSerializer serializer];
            [sessionManager.responseSerializer setAcceptableContentTypes:[NSSet setWithObjects:Content_XML, nil]];
        }
            break;
        default:
            break;
    }
    
    if (method==RequestMethodGet) {
        [sessionManager GET:url parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            result(YES,responseObject,nil);
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            result(NO,nil,error);
        }];
    }else if (method==RequestMethodPost){
        [sessionManager POST:url parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            result(YES,responseObject,nil);
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            result(NO,nil,error);
        }];
    }
    
}

@end
