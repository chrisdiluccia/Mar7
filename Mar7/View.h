//
//  View.h
//  Mar7
//
//  Created by Christopher J Di Luccia on 3/6/13.
//  Copyright (c) 2013 Christopher J Di Luccia. All rights reserved.
//

#import <UIKit/UIKit.h>
@class PieceOfGarbage;
@class TrashCan;

@interface View: UIView {
    PieceOfGarbage *piece1;
    PieceOfGarbage *piece2;
    PieceOfGarbage *piece3;
    TrashCan *can;
    UITextView *textView;
    bool trashCollected;
}

@end
