//
//  ViewController.m
//  转场动画
//
//  Created by 霍文轩 on 15/10/30.
//  Copyright © 2015年 霍文轩. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "CustomViewControllerTransition.h"

@interface ViewController () <UINavigationControllerDelegate>
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];

    // 把nav的代理设置成自己
    self.navigationController.delegate = self;
    
    UIButton * pushButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 40)];
    pushButton.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
    [self.view addSubview:pushButton];
    pushButton.backgroundColor = [UIColor blackColor];
    [pushButton setTitle:@"push" forState:UIControlStateNormal];
    [pushButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [pushButton addTarget:self action:@selector(pushClick) forControlEvents:UIControlEventTouchUpInside];
    
    self.sourceImageView = [[UIImageView alloc] initWithFrame:CGRectMake(5, 66+5, self.view.frame.size.width/2-5, self.view.frame.size.width/2-5)];
    [self.view addSubview:_sourceImageView];
    _sourceImageView.image = [UIImage imageNamed:@"image.jpg"];
}

- (void)pushClick{
    SecondViewController * secondVC = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:secondVC animated:YES];
}
- (id<UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController animationControllerForOperation:(UINavigationControllerOperation)operation fromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC{
    if (operation == UINavigationControllerOperationPush){  // 就是在这里判断是哪种动画类型
        return [[CustomViewControllerTransition alloc] init]; // 返回push动画的类
    }else{
        return nil;
    }
}

@end
