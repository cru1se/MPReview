//
//  MenuTableView.m
//  MPReview
//
//  Created by cruise on 15-4-8.
//  Copyright (c) 2015年 com.linjm. All rights reserved.
//

#import "MenuTableView.h"

@interface MenuTableView () {
	NSArray *_cellTitleArray;
	NSArray *_cellImageArray;
}

@end

@implementation MenuTableView

-(id) initWithFrame:(CGRect)frame style:(UITableViewStyle)style {
	self = [super initWithFrame:frame style:style];
	if (self) {
		self.delegate = self;
		self.dataSource = self;
		self.separatorStyle = UITableViewCellSeparatorStyleNone;
		[self setBackgroundColor:[UIColor clearColor]];
		
		_cellTitleArray = @[@"产品库", @"评测", @"闺蜜圈", @"化妆品"];
		_cellImageArray = @[@"LeftProductButtonIcon", @"LeftReviewButtonIcon", @"LeftCircleButtonIcon", @"LeftPackButtonIcon"];
	}
	return self;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return 4;
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	
	static NSString *cellIdentifier = @"TableViewCell";
	
	UITableViewCell *cell = (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
	
	if (!cell) {
		cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
		
		[cell setBackgroundColor:[UIColor clearColor]];
		UIView *selectView = [[UIView alloc] init];
		[selectView setBackgroundColor:COLOR(1, 1, 1, 0.3)];
		[cell setSelectedBackgroundView:selectView];
		
		[cell.textLabel setTextColor:[UIColor whiteColor]];
		[cell.textLabel setFont:[UIFont systemFontOfSize:14]];
	}
	
	[cell.imageView setImage:[UIImage imageNamed:_cellImageArray[indexPath.row]]];
	[cell.textLabel setText:_cellTitleArray[indexPath.row]];
	
	return cell;
}

-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
	return 50;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	
}

@end
