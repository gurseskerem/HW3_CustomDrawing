//
//  Draw.m
//  HW3_CustomDrawing
//
//  Created by Kerem Gurses on 4.03.2021.
//

#import "Draw.h"

@implementation Draw
@synthesize unit_x,unit_y;


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    NSLog(@"Did a redraw!");
    //CGRect bounds = [self bounds];
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //[[UIColor redColor] setFill];
    //CGContextFillRect(context,bounds);
    
    [[UIColor whiteColor] setFill];
    CGContextFillEllipseInRect(context, CGRectMake(unit_x, unit_y, 20, 20));
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    for (UITouch *t in touches)
    {
        CGPoint p = [t locationInView:self];
        NSLog(@"Touch at %f %f",p.x,p.y);
        unit_x = p.x;
        unit_y = p.y;
        [self setNeedsDisplay];
    }
}


@end
