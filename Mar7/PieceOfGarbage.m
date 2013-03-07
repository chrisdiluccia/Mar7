//
//  PieceOfGarbage.m
//  Mar7
//
//  Created by Christopher J Di Luccia on 3/6/13.
//  Copyright (c) 2013 Christopher J Di Luccia. All rights reserved.
//

#import "PieceOfGarbage.h"

@implementation PieceOfGarbage

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
 UIImage *image = [UIImage imageNamed: @"trash.png"];
 if (image == nil) {
 NSLog(@"could not find the image");
 return;
 }
 
 CGPoint point = CGPointMake(0,0);
 
 [image drawAtPoint: point];
}

@end
