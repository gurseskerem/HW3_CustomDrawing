//
//  Draw.m
//  HW3_CustomDrawing
//
//  Created by Kerem Gurses on 4.03.2021.
//

#import "Draw.h"

@implementation Draw
@synthesize unit_x,unit_y;



- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code

        self.opaque = NO;

    }
    return self;
}





- (void)drawRect:(CGRect)rect {
    [[UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0] setFill];
    UIRectFill(rect);
    
  

    NSLog(@"Did a redraw!");
    CGRect bounds = [self bounds];
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextFillRect(context,bounds);
    
    [[UIColor blackColor] setFill];
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
