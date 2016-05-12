//
//  CollectionViewController.h
//  bubbleWrap
//
//  Created by kenny on 11/2/15.
//  Copyright © 2015 kenny. All rights reserved.
//
#import <AudioToolbox/AudioToolbox.h>
#import <UIKit/UIKit.h>
#import "CollectionViewCell.h"
#import "miniVC.h"
@interface CollectionViewController : UICollectionViewController <UICollectionViewDataSource, UICollectionViewDelegate, UIGestureRecognizerDelegate, UIViewControllerPreviewingDelegate>
{
    UICollectionView *collectionView;
}


@property (strong, nonatomic) NSMutableArray *bubbles;
@property (strong, nonatomic) UIImage *bubble;
@property (strong, nonatomic) UIGestureRecognizer *gesture;
@property (strong, nonatomic) miniVC *mini;
@property (nonatomic, strong) id previewingContext;


@end
