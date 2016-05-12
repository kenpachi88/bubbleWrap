//
//  CollectionViewCell.h
//  bubbleWrap
//
//  Created by kenny on 11/2/15.
//  Copyright © 2015 kenny. All rights reserved.
//
#import <AudioToolbox/AudioToolbox.h>
#import <UIKit/UIKit.h>
#import "CollectionViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface CollectionViewCell : UICollectionViewCell <UIGestureRecognizerDelegate>
@property (strong, nonatomic) IBOutlet UIImageView *imageView;



@end
