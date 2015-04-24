//
//  BaseViewController.m
//  MPReview
//
//  Created by cruise on 15/4/23.
//  Copyright (c) 2015年 com.linjm. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

#pragma mark - ExtendedLayout

#ifdef __IPHONE_7_0
- (UIRectEdge)edgesForExtendedLayout {
	return UIRectEdgeNone;
}
#endif

#pragma mark - 

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
