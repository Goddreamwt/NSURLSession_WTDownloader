//
//  ViewController.m
//  002--下载管理器
//
//  Created by H on 2017/2/22.
//  Copyright © 2017年 TZ. All rights reserved.
//


#import "ViewController.h"
#import "WTDownloader.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    WTDownloader * downloader = [[WTDownloader alloc]init];
    NSURL * url = [NSURL URLWithString:@"http://127.0.0.1/abc.wmv"];
    [downloader downloadWithURL:url Progress:^(float progress) {
        NSLog(@"--->%f  %@",progress,[NSThread currentThread]);
    } completion:^(NSString *filePath) {
        //下载成功了
        NSLog(@"下载完成了 %@ %@",filePath,[NSThread currentThread]);
        
    } failed:^(NSString *errorMsg) {
        NSLog(@"下载失败了:%@",errorMsg);
    }];
}


@end
