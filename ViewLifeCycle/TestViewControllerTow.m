//
//  TestViewControllerTow.m
//  ViewLifeCycle
//
//  Created by 李广帅 on 2018/3/22.
//  Copyright © 2018年 天蓬大元. All rights reserved.
//

#import "TestViewControllerTow.h"
#import "TestView.h"
@interface TestViewControllerTow ()
@property (nonatomic,strong) TestView *testView;
@end

@implementation TestViewControllerTow

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    
    _testView = [[TestView alloc]initWithFrame:CGRectMake(100, 0, 100, 100)];
    [self.view addSubview:_testView];
    _testView.backgroundColor = [UIColor lightGrayColor];
    
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
    [_testView addSubview:view];
}


@end
