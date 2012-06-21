//
//  iOS6TwitterWidgetController.m
//  iOS6TwitterWidget
//
//  Created by Mathieu Hendey on 20/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "iOS6TwitterWidgetController.h"

@implementation iOS6TwitterWidgetController

-(id)init
{
	if ((self = [super init]))
	{
	}

	return self;
}

-(void)dealloc
{
	[_view release];
	[super dealloc];
}

- (UIView *)view
{
	if (_view == nil)
	{
		_view = [[UIView alloc] initWithFrame:CGRectMake(2, 0, 316, 35)];
        _view.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        
		UIImage *bg = [[UIImage imageWithContentsOfFile:@"/System/Library/WeeAppPlugins/iOS6TwitterWidget.bundle/WeeAppBackground.png"] stretchableImageWithLeftCapWidth:5 topCapHeight:71];
		UIImageView *bgView = [[UIImageView alloc] initWithImage:bg];
		bgView.frame = CGRectMake(0, 0, 312, 35);
        bgView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
		[_view addSubview:bgView];
		[bgView release];

		UILabel *lbl = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, _view.frame.size.width, 35)];
        lbl.autoresizingMask = UIViewAutoresizingFlexibleWidth;
		lbl.backgroundColor = [UIColor clearColor];
		lbl.textColor = [UIColor colorWithRed:0.612 green:0.62 blue:0.643 alpha:1] /*#9c9ea4*/;
        lbl.shadowColor = [UIColor blackColor];
        lbl.shadowOffset = CGSizeMake(0.0, 1.0);
        lbl.font = [UIFont boldSystemFontOfSize:17];
		lbl.text = @"Tap to Tweet";
		lbl.textAlignment = UITextAlignmentCenter;
		[_view addSubview:lbl];
		[lbl release];
        
        UIImage *bird = [UIImage imageWithContentsOfFile:@"/System/Library/WeeAppPlugins/iOS6TwitterWidget.bundle/birdicon.png"];
        UIImageView *birdView = [[UIImageView alloc] initWithImage:bird];
        birdView.frame = CGRectMake(9, 9, 22.5, 18.5);
        [_view addSubview:birdView];
        [_view bringSubviewToFront:lbl];
        [birdView release];
	}

	return _view;
}

- (float)viewHeight
{
	return 35.0f;
}

@end