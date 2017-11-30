//
//  HomeVC.m
//  E-Sale
//
//  Created by Chan on 2017/4/11.
//  Copyright © 2017年 Chan. All rights reserved.
//

#import "HomeVC.h"
#import "SettingVC.h"
#import "CenterVC.h"

@interface HomeVC ()

@end

@implementation HomeVC

- (void)viewWillAppear:(BOOL)animated {
    self.navigationController.navigationBarHidden = YES;
}

- (void)viewWillDisappear:(BOOL)animated {
    self.navigationController.navigationBarHidden = NO;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    SettingVC *leftVC = [SettingVC new];
    UINavigationController *leftSettingVC = [[UINavigationController alloc] initWithRootViewController:leftVC];
    CenterVC *centerVC = [CenterVC new];
    UINavigationController *centerNaviVC = [[UINavigationController alloc] initWithRootViewController:centerVC];
    self.leftDrawerViewController = leftSettingVC;
    self.centerViewController = centerNaviVC;
    self.maximumLeftDrawerWidth = 180;
    [self setOpenDrawerGestureModeMask:MMOpenDrawerGestureModeAll];
    [self setCloseDrawerGestureModeMask:MMCloseDrawerGestureModeAll];
}

@end
