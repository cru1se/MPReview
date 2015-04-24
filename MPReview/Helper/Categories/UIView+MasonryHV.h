//
//  UIView+MasonryHV.h
//  MPReview
//
//  Created by cruise on 15/4/24.
//  Copyright (c) 2015年 com.linjm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (MasonryHV)

//水平排列
- (void) distributeSpacingHorizontallyWith:(NSArray*)views;

//垂直排列
- (void) distributeSpacingVerticallyWith:(NSArray*)views;

@end
