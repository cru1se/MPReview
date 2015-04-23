//
//  HomeViewController.m
//  MPReview
//
//  Created by cruise on 15/4/23.
//  Copyright (c) 2015年 com.linjm. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

-(void) defaultInterface {
	UIView *view = [UIView new];
	[view setBackgroundColor:RBG(10, 20, 30, 1)];
	[self.view addSubview:view];
	
	UIView *superview = self.view;
	UIEdgeInsets padding = UIEdgeInsetsMake(10, 10, 10, 10);
	
	[view mas_makeConstraints:^(MASConstraintMaker *make) {
		make.edges.equalTo(superview).with.insets(padding);
	}];
}

- (void)viewDidLoad {
    [super viewDidLoad];
	
	[self defaultInterface];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
