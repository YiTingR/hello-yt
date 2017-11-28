//
//  ViewController.m
//  MyApp1
//
//  Created by YitingRen on 2017/11/17.
//  Copyright © 2017年 YitingRen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)openAnotherApp:(id)sender {
    //创建一个url，这个url就是WXApp的url，记得加上：//
    NSURL *url = [NSURL URLWithString:@"weixin://"];
    
    //打开url
//    [[UIApplication sharedApplication] openURL:url];

    
    //先判断是否能打开该url
    if ([[UIApplication sharedApplication] canOpenURL:url]) {
        //打开url
        [[UIApplication sharedApplication] openURL:url];
    }else {
        //给个提示或者做点别的事情
        NSLog(@"U四不四洒，没安装WXApp，怎么打开啊！");
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
