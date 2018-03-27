//
//  TestViewController.m
//  ViewLifeCycle
//
//  Created by 李广帅 on 2018/3/22.
//  Copyright © 2018年 天蓬大元. All rights reserved.
//

#import "TestViewController.h"
#import "TestViewControllerTow.h"
@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.navigationController pushViewController:[[TestViewControllerTow alloc]init] animated:YES];
}

@end
