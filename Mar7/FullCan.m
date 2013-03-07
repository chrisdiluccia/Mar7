//
//  FullCan.m
//  Mar7
//
//  Created by Christopher J Di Luccia on 3/7/13.
//  Copyright (c) 2013 Christopher J Di Luccia. All rights reserved.
//

#import "FullCan.h"

@implementation FullCan

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    // Drawing code
    UIImage *image = [UIImage imageNamed: @"fullcan.png"];
    if (image == nil) {
        NSLog(@"could not find the image");
        return;
    }
    
    CGPoint point = CGPointMake(0,0);
    
    [image drawAtPoint: point];
}

@end
