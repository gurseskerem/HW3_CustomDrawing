//
//  Draw.m
//  HW3_CustomDrawing
//
//  Created by Kerem Gurses on 4.03.2021.
//

#import "Draw.h"

@implementation Draw


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    NSLog(@"Did a redraw!");
    CGRect bounds = [self bounds];
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    [[UIColor redColor] setFill];
    CGContextFillRect(context,bounds);
}


@end
