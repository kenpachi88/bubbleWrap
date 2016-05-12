//
//  CollectionViewCell.m
//  bubbleWrap
//
//  Created by kenny on 11/2/15.
//  Copyright © 2015 kenny. All rights reserved.
//

#import "CollectionViewCell.h"

@implementation CollectionViewCell
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [super touchesBegan:touches withEvent:event];
    
}
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    
    CGFloat maximumPossibleForce = touch.maximumPossibleForce;
    CGFloat force = touch.force;
    CGFloat normalizedForce = force/maximumPossibleForce;
    NSLog(@"Normalized force : %f ", normalizedForce);

    if (normalizedForce == 1.0 )
    {

        [super touchesMoved:touches withEvent:event];
        normalizedForce = 0;
    } else {
        
    }
}
-(void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{
    
    [super touchesCancelled:touches withEvent:event];
}
//}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    //    [self setForcePercentage:0];

    [super touchesEnded:touches withEvent:event];
}
@end
