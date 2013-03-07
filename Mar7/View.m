//
//  View.m
//  Mar7
//
//  Created by Christopher J Di Luccia on 3/6/13.
//  Copyright (c) 2013 Christopher J Di Luccia. All rights reserved.
//

#import "View.h"
#import "PieceOfGarbage.h"
#import "TrashCan.h"
#import "FullCan.h"

@implementation View

- (id) initWithFrame: (CGRect) frame
{
    self = [super initWithFrame: frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor whiteColor];
        
        CGFloat w = self.bounds.size.width;
        CGFloat h = self.bounds.size.height;
        
        CGRect g1 = CGRectMake(0, h-57, 60, 57);
        piece1 = [[PieceOfGarbage alloc] initWithFrame: g1];
        [self addSubview: piece1];
        
        CGRect g2 = CGRectMake(60, (h-h)+75, 60, 57);
        piece2 = [[PieceOfGarbage alloc] initWithFrame: g2];
        [self addSubview: piece2];
        
        CGRect g3 = CGRectMake(120, (h-h)+200, 60, 57);
        piece3 = [[PieceOfGarbage alloc] initWithFrame: g3];
        [self addSubview: piece3];
        
        CGRect c = CGRectMake(w-128, h-128, 128, 128);
        can = [[TrashCan alloc] initWithFrame: c];
        [self addSubview: can];
        
        fullCan = [[FullCan alloc] initWithFrame: c];
        [self addSubview: fullCan];
        fullCan.alpha=0;
        
        CGRect t = CGRectMake(w-w, (h-h)+16, 320, 60);
        textView = [[UITextView alloc] initWithFrame: t];
		textView.backgroundColor = [UIColor whiteColor];
		textView.textColor = [UIColor blackColor];
		textView.font = [UIFont fontWithName: @"Times New Roman" size: 16.0];
		textView.editable = NO;	//Don't pop up a keyboard.
		
		textView.text = @"Move each piece of trash into the trash can!";
		[self addSubview: textView];
        
        trashCollected = NO;
    }
    return self;
}

- (void) touchesMoved: (NSSet *) touches withEvent: (UIEvent *) event
{
    if (touches.count > 0)
    {
        UITouch *touch = [touches anyObject];
        CGPoint point = [touch locationInView: self];
        if((point.x >= piece1.center.x-35 && point.x <= piece1.center.x+35) && (point.y >= piece1.center.y-30 && point.y<=piece1.center.y+30))
        {// the above if statement is to ensure that you only move the piece of garvage when you grab within the bounds of it
            if(piece1.alpha!=0)
            {
                piece1.center = point;	//Move the piece of garbage to a new location.
                if((piece1.center.x+30 >= can.center.x-40 && piece1.center.x+30 <= can.center.x+40) && (piece1.center.y+28 >= can.center.y-55 && piece1.center.y+28<=can.center.y+55))
                {
                    //  NSLog(@"You touched the can with piece1");
                    piece1.alpha=0;
                }
            }
        }
        if((point.x >= piece2.center.x-35 && point.x <= piece2.center.x+35) && (point.y >= piece2.center.y-30 && point.y<=piece2.center.y+30))
        {// the above if statement is to ensure that you only move the piece of garbage when you grab within the bounds of it
            if(piece2.alpha!=0)
            {
                piece2.center = point;	//Move the piece of garbage to a new location.
                if((piece2.center.x+30 >= can.center.x-40 && piece2.center.x+30 <= can.center.x+40) && (piece2.center.y+28 >= can.center.y-55 && piece2.center.y+28<=can.center.y+55))
                {
                  //  NSLog(@"You touched the can with piece2");
                    piece2.alpha=0;
                }
            }
        }
        if((point.x >= piece3.center.x-35 && point.x <= piece3.center.x+35) && (point.y >= piece3.center.y-30 && point.y<=piece3.center.y+30))
        {// the above if statement is to ensure that you only move the piece of garbage when you grab within the bounds of it
            if(piece3.alpha!=0)
            {
                piece3.center = point;	//Move the piece of garbage to a new location.
                if((piece3.center.x+30 >= can.center.x-40 && piece3.center.x+30 <= can.center.x+40) && (piece3.center.y+28 >= can.center.y-55 && piece3.center.y+28<=can.center.y+55))
                {
                //    NSLog(@"You touched the can with piece3");
                    piece3.alpha=0;
                }
            }
        }
        
    }
    if (piece1.alpha == 0 || piece2.alpha == 0 || piece3.alpha == 0)
    {
        can.alpha=0;
        fullCan.alpha=1;
    }
    if ((piece1.alpha == 0 && piece2.alpha == 0 && piece3.alpha == 0) && !trashCollected)
    {
      //  NSLog(@"All pieces are in the can");
        textView.text = [textView.text stringByAppendingFormat:
                         @"\tGreat job!!! All clean!!!"];
        [self addSubview: textView];
        trashCollected = YES;
    }
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
