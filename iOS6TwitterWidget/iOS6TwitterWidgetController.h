//
//  iOS6TwitterWidgetController.h
//  iOS6TwitterWidget
//
//  Created by Mathieu Hendey on 20/06/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "SpringBoard/BBWeeAppController.h"

@interface iOS6TwitterWidgetController : NSObject <BBWeeAppController>
{
    UIView *_view;
}

- (UIView *)view;

@end