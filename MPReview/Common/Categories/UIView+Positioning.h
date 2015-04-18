//
//  UIView+Positioning.h
//  iWallpaper
//
//  Created by cruise on 14-6-5.
//  Copyright (c) 2014年 Monster. All rights reserved.
//


#import <UIKit/UIKit.h>

/**
 `UIView+Positioning` provides easy shorthand methods to defining the frame properties (width, height, x, y) of any UIView based object in an easy fashion, as well as extra helpful properties and methods.
 */

@interface UIView (Positioning)

/** View's X Position */
@property (nonatomic, assign) CGFloat   x;

/** View's Y Position */
@property (nonatomic, assign) CGFloat   y;

/** View's width */
@property (nonatomic, assign) CGFloat   width;

/** View's height */
@property (nonatomic, assign) CGFloat   height;

/** View's origin - Sets X and Y Positions */
@property (nonatomic, assign) CGPoint   origin;

/** View's size - Sets Width and Height */
@property (nonatomic, assign) CGSize    size;

/** Y vale representing the bottom of the view **/
@property (nonatomic, assign) CGFloat   bottom;

/** X Value representing the right side of the view **/
@property (nonatomic, assign) CGFloat   right;

/** X value of the object's center **/
@property (nonatomic, assign) CGFloat   centerX;

/** Y value of the object's center **/
@property (nonatomic, assign) CGFloat   centerY;

/** Returns the Subview with the heighest X value **/
@property (nonatomic, strong, readonly) UIView *lastSubviewOnX;

/** Returns the Subview with the heighest Y value **/
@property (nonatomic, strong, readonly) UIView *lastSubviewOnY;

-(CGFloat) boundsMinX;

-(CGFloat) boundsMinY;

-(CGFloat) boundsWidth;

-(CGFloat) boundsHeight;

-(CGFloat) frameMinX;

-(CGFloat) frameMinY;

-(CGFloat) frameMaxX;

-(CGFloat) frameMaxY;

@end
