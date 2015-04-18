//
//  LeftMenuViewController.m
//  MPReview
//
//  Created by cruise on 15-4-8.
//  Copyright (c) 2015年 com.linjm. All rights reserved.
//

#import "LeftMenuViewController.h"
#import "MenuTableView.h"

@interface LeftMenuViewController ()

@property (nonatomic, strong) UIView *infoView;
@property (nonatomic, strong) MenuTableView *menuTableView;

@end

@implementation LeftMenuViewController

-(void) setUpNavigation {
	[self.view setBackgroundColor:COLOR(74, 57, 73, 1)];
}

-(void) defaultInterface {
	self.infoView = [[UIView alloc] initWithFrame:CGRectZero];
	[[self.infoView layer] setBorderWidth:1];
	[self.view addSubview:self.infoView];
	
	self.menuTableView = [[MenuTableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
	[[self.menuTableView layer] setBorderColor:[UIColor redColor].CGColor];
	[[self.menuTableView layer] setBorderWidth:1];
	[self.view addSubview:self.menuTableView];
}

- (void)viewDidLoad {
    [super viewDidLoad];
	
	[self setUpNavigation];
	[self defaultInterface];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
