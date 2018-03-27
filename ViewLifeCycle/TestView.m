//
//  TestView.m
//  ViewLifeCycle
//
//  Created by 李广帅 on 2018/3/22.
//  Copyright © 2018年 天蓬大元. All rights reserved.
//

#import "TestView.h"
@interface TestView (){
    NSInteger count;
}

@end

@implementation TestView


- (instancetype)init{
    self = [super init];
    if (self) {
        
        count = 0;
        
    }
    return self;
}
//在子视图布局变动时会多次调用
- (void)layoutSubviews{
    [super layoutSubviews];
    count++;
    NSLog(@"%@ ==> %ld",NSStringFromSelector(_cmd),count);
}
//需要有子视图才能执行
//添加几个子试图，就会执行几次。在layoutSubviews前执行
- (void)didAddSubview:(UIView *)subview{
    [super didAddSubview:subview];
    count++;
    NSLog(@"%@ ==> %ld",NSStringFromSelector(_cmd),count);
}
//需要有子视图才能执行
//willRemoveSubview是在dealloc后面执行的,而且如果有多个子视图，willRemoveSubview会循环执行，直到移除所有子视图。
- (void)willRemoveSubview:(UIView *)subview{
    [super willRemoveSubview:subview];
    count++;
    NSLog(@"%@ ==> %ld",NSStringFromSelector(_cmd),count);
}
//这俩个方法可以根据参数是否为nil判断是创建操作还是销毁操作，nil则为销毁，反之，则为创建；
- (void)willMoveToSuperview:(nullable UIView *)newSuperview{
    [super willMoveToSuperview:newSuperview];
    count++;
    NSLog(@"%@ ==> %ld",NSStringFromSelector(_cmd),count);
}
//这个方法可以根据self.superview的值判定，nil则为销毁，反之，则为创建。
- (void)didMoveToSuperview{
    [super didMoveToSuperview];
    count++;
    NSLog(@"%@ ==> %ld",NSStringFromSelector(_cmd),count);
}
//这俩个方法可以根据参数是否为nil判断是创建操作还是销毁操作，nil则为销毁，反之，则为创建；
- (void)willMoveToWindow:(nullable UIWindow *)newWindow{
    [super willMoveToWindow:newWindow];
    count++;
    NSLog(@"%@ ==> %ld",NSStringFromSelector(_cmd),count);
}
//这个方法可以根据self.superview的值判定，nil则为创建，反之，则为销毁。(注意这个方法和上面的是相反的)
- (void)didMoveToWindow{
    [super didMoveToWindow];
    count++;
    NSLog(@"%@ ==> %ld",NSStringFromSelector(_cmd),count);
}
//只会执行一次的方法
- (void)removeFromSuperview{
    [super removeFromSuperview];
    count++;
    NSLog(@"%@ ==> %ld",NSStringFromSelector(_cmd),count);
}
//只会执行一次的方法
- (void)dealloc{
    count++;
    NSLog(@"%@ ==> %ld",NSStringFromSelector(_cmd),count);
}


@end
