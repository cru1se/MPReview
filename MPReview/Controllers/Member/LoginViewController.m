//
//  LoginViewController.m
//  MPReview
//
//  Created by cruise on 15/4/24.
//  Copyright (c) 2015年 com.linjm. All rights reserved.
//

#import "LoginViewController.h"

#import "UIView+MasonryHV.h"

@interface LoginViewController ()

@property (nonatomic, strong) UIImageView *bgImageView;
@property (nonatomic, strong) UIImageView *showImageView;
@property (nonatomic, strong) UIImageView *showTopImageView;
@property (nonatomic, strong) UIButton *sinaLoginButton;
@property (nonatomic, strong) UIButton *txQQLoginButton;
@property (nonatomic, strong) UIButton *wechatLoginButton;
@property (nonatomic, strong) UIButton *mpLoginButton;

@end

@implementation LoginViewController

#pragma mark - 配置视图

-(void) defaultInterface {
	[self.view addSubview:self.bgImageView];
	[self.bgImageView addSubview:self.showImageView];
	[self.bgImageView addSubview:self.showTopImageView];
	[self.bgImageView addSubview:self.sinaLoginButton];
	[self.bgImageView addSubview:self.txQQLoginButton];
	[self.bgImageView addSubview:self.wechatLoginButton];
	[self.bgImageView addSubview:self.mpLoginButton];
	
	
	
	[self makeConstraints];
}

#pragma mark - 控件约束

-(void) makeConstraints {
	UIView *superview = self.view;
	
	[self.bgImageView mas_makeConstraints:^(MASConstraintMaker *make) {
		make.edges.equalTo(superview);
	}];
	
	[self.showImageView mas_makeConstraints:^(MASConstraintMaker *make) {
		make.centerX.equalTo(superview);
		make.top.mas_equalTo(@200);
		if (iPhone5) {
			make.top.mas_equalTo(@100);
		}
	}];
	
	[self.showTopImageView mas_makeConstraints:^(MASConstraintMaker *make) {
		make.centerX.equalTo(self.showImageView);
		make.bottom.equalTo(self.showImageView.mas_top);
	}];
	
	[self.mpLoginButton mas_makeConstraints:^(MASConstraintMaker *make) {
		make.centerX.equalTo(superview);
		make.bottom.equalTo(superview).with.offset(-90);
		make.size.mas_equalTo(CGSizeMake(264, 38));
	}];
	
	CGSize buttonSize = CGSizeMake(50, 63.5);
	
	[self.sinaLoginButton mas_makeConstraints:^(MASConstraintMaker *make) {
		make.centerY.equalTo(@[self.txQQLoginButton, self.wechatLoginButton]);
		make.bottom.equalTo(self.mpLoginButton.mas_top).with.offset(-30);
		make.size.mas_equalTo(buttonSize);
	}];

	[self.txQQLoginButton mas_makeConstraints:^(MASConstraintMaker *make) {
		make.size.mas_equalTo(buttonSize);
	}];
	
	[self.wechatLoginButton mas_makeConstraints:^(MASConstraintMaker *make) {
		make.size.mas_equalTo(buttonSize);
	}];
	
	[superview distributeSpacingHorizontallyWith:@[self.sinaLoginButton, self.txQQLoginButton, self.wechatLoginButton]];
	
//	[superview showPlaceHolderWithAllSubviews];
//	[superview hidePlaceHolder];
	
}

#pragma mark - 视图控件

-(UIImageView *) bgImageView {
	if (!_bgImageView) {
		_bgImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"login_bg_1"]];
		[_bgImageView setContentMode:UIViewContentModeScaleAspectFill];
	}
	return _bgImageView;
}

-(UIImageView *) showTopImageView {
	if (!_showTopImageView) {
		_showTopImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"login_xc_top"]];
	}
	return _showTopImageView;
}

-(UIImageView *) showImageView {
	if (!_showImageView) {
		_showImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"login_xc"]];
	}
	return _showImageView;
}

-(UIButton *) sinaLoginButton {
	if (!_sinaLoginButton) {
		_sinaLoginButton = [UIButton buttonWithType:UIButtonTypeCustom];
		[_sinaLoginButton setImage:[UIImage imageNamed:@"login_button_0"] forState:UIControlStateNormal];
		[_sinaLoginButton setImage:[UIImage imageNamed:@"login_button_press_0"] forState:UIControlStateHighlighted];
		[_sinaLoginButton setBackgroundColor:[UIColor clearColor]];
	}
	return _sinaLoginButton;
}

-(UIButton *) txQQLoginButton {
	if (!_txQQLoginButton) {
		_txQQLoginButton = [UIButton buttonWithType:UIButtonTypeCustom];
		[_txQQLoginButton setImage:[UIImage imageNamed:@"login_button_1"] forState:UIControlStateNormal];
		[_txQQLoginButton setImage:[UIImage imageNamed:@"login_button_press_1"] forState:UIControlStateHighlighted];
		[_txQQLoginButton setBackgroundColor:[UIColor clearColor]];
	}
	return _txQQLoginButton;
}

-(UIButton *) wechatLoginButton {
	if (!_wechatLoginButton) {
		_wechatLoginButton = [UIButton buttonWithType:UIButtonTypeCustom];
		[_wechatLoginButton setImage:[UIImage imageNamed:@"login_button_2"] forState:UIControlStateNormal];
		[_wechatLoginButton setImage:[UIImage imageNamed:@"login_button_press_2"] forState:UIControlStateHighlighted];
		[_wechatLoginButton setBackgroundColor:[UIColor clearColor]];
	}
	return _wechatLoginButton;
}

-(UIButton *) mpLoginButton {
	if (!_mpLoginButton) {
		_mpLoginButton = [UIButton buttonWithType:UIButtonTypeCustom];
		[_mpLoginButton setImage:[UIImage imageNamed:@"phone_login_nomal"] forState:UIControlStateNormal];
		[_mpLoginButton setImage:[UIImage imageNamed:@"phone_login_selected"] forState:UIControlStateHighlighted];
		[_mpLoginButton setBackgroundColor:[UIColor clearColor]];
	}
	return _mpLoginButton;
}

- (void)viewDidLoad {
    [super viewDidLoad];
	
	[self defaultInterface];
}

-(void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	
	//隐藏NavigationBar
	[self.navigationController setNavigationBarHidden:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
