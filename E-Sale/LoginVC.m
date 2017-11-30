//
//  LoginVC.m
//  E-Sale
//
//  Created by Chan on 2017/4/11.
//  Copyright © 2017年 Chan. All rights reserved.
//

#import "LoginVC.h"
#import "HomeVC.h"
@interface LoginVC () {
    UIImageView *imageView;
    UITextField *_userName;
    UITextField *_code;
    UIButton *_register;
    UIButton *_forgetPassWord;
    UIButton *_login;
}

@end

@implementation LoginVC

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUI];
}

- (void)setUI {
    self.view.backgroundColor = [UIColor grayColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    HomeVC *VC = [HomeVC new];
    UINavigationController *homeVC = [[UINavigationController alloc] initWithRootViewController:VC];
    [self.navigationController presentViewController:homeVC animated:YES completion:nil];
    
}
@end
