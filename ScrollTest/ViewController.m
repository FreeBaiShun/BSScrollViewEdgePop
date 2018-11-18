//
//  ViewController.m
//  ScrollTest
//
//  Created by BaiShun on 2018/11/18.
//  Copyright © 2018 BaiShun. All rights reserved.
//

#import "ViewController.h"
#import "ViewControllerSecond.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationController setNavigationBarHidden:YES];
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [btn setTitle:@"下一个界面" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnClick{
    [self.navigationController pushViewController:[ViewControllerSecond new] animated:YES];
}
@end
