//
//  SecondViewController.m
//  转场动画
//
//  Created by 霍文轩 on 15/10/30.
//  Copyright © 2015年 霍文轩. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor cyanColor];

    UIButton * popButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 40)];
    popButton.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
    [self.view addSubview:popButton];
    popButton.backgroundColor = [UIColor blackColor];
    [popButton setTitle:@"pop" forState:UIControlStateNormal];
    [popButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [popButton addTarget:self action:@selector(popClick) forControlEvents:UIControlEventTouchUpInside];
    
    self.avatarImageView = [[UIImageView alloc] initWithFrame:CGRectMake(5, 66+5, self.view.frame.size.width - 10, 300)];
    [self.view addSubview:_avatarImageView];

}
- (void)popClick{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
