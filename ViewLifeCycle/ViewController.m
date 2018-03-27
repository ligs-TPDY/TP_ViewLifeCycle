//
//  ViewController.m
//  ViewLifeCycle
//
//  Created by 李广帅 on 2018/3/22.
//  Copyright © 2018年 天蓬大元. All rights reserved.
//

#import "ViewController.h"
#import "TestViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:[[TestViewController alloc]init]];
    
    [self presentViewController:nav animated:YES completion:nil];
}



@end
