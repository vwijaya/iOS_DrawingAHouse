//
//  VWHouseView.m
//  Drawing A House
//
//  Created by Valerino on 7/15/14.
//  Copyright (c) 2014 VW. All rights reserved.
//

#import "VWHouseView.h"

@implementation VWHouseView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    bezierPath.lineWidth = 2.0;
    
    [bezierPath moveToPoint:CGPointMake     (1/4.0 * self.bounds.size.width,
                                             1/3.0 * self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake  (1/4.0 * self.bounds.size.width,
                                             2/3.0 * self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake  (3/4.0 * self.bounds.size.width,
                                             2/3.0 * self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake  (3/4.0 * self.bounds.size.width,
                                             1/3.0 * self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake  (1/2.0 * self.bounds.size.width,
                                             1/4.0 * self.bounds.size.height)];
    
    // Connect from last to first point
    [bezierPath closePath];
    
    // Draw !
    [bezierPath stroke];
    
}

@end
