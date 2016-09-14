//
//  ViewController.m
//  CLPodTest
//
//  Created by apple on 16/9/13.
//  Copyright © 2016年 刘朝龙. All rights reserved.
//

#import "ViewController.h"
#import "CLNetRequest.h"

#define REQUEST_URL @"http://www.baidu.com"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [CLNetRequest requestWithURL:REQUEST_URL parameters:nil method:RequestMethodGet content:RequestContentHTML result:^(BOOL success, id responseObj, NSError *error) {
       
        if (success) {
            NSString *result = [[NSString alloc] initWithData:responseObj encoding:NSUTF8StringEncoding];
            NSLog(@"%@", result);
        }else{
            NSLog(@"%@", error);
        }
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
