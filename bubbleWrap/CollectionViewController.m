//
//  CollectionViewController.m
//  bubbleWrap
//
//  Created by kenny on 11/2/15.
//  Copyright © 2015 kenny. All rights reserved.
//

#import "CollectionViewController.h"

@interface CollectionViewController ()
@end

@implementation CollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];

    self.collectionView.frame = CGRectMake(10, 200, 640, 480);
    self.previewingContext = [self registerForPreviewingWithDelegate:self sourceView:self.view];
    self.collectionView.backgroundColor = [UIColor clearColor];
    self.bubbles = [[NSMutableArray alloc]initWithObjects:@"popped.png",@"regularbubble.png", nil];

    [self addButton];
    self.collectionView.userInteractionEnabled = YES;
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)addButton {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button addTarget:self
               action:@selector(restart:)
     forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Reset" forState:UIControlStateNormal];
    button.frame = CGRectMake(10, 10, 160.0, 40.0);
    [self.view addSubview:button];
}

-(void)restart:(id)obj{
    [self.collectionView reloadData];
}

- (void)previewingContext:(id )previewingContext commitViewController: (UIViewController *)viewControllerToCommit {
    
    // [self presentViewController:viewControllerToCommit animated:YES completion:nil];
    
    [self.navigationController showViewController:viewControllerToCommit sender:nil];
}

-(UIViewController *)previewingContext:(id<UIViewControllerPreviewing>)previewingContext viewControllerForLocation:(CGPoint)location {
    
    CGPoint cellPosition = [self.collectionView convertPoint:location fromView:self.view];
    NSIndexPath *indexPath = [self.collectionView indexPathForItemAtPoint:cellPosition];
    if (indexPath) {

        UICollectionViewCell *cell = [self.collectionView cellForItemAtIndexPath:indexPath];
        miniVC *vc = [[miniVC alloc]init];
        previewingContext.sourceRect = cell.frame;
        
        cell.userInteractionEnabled = NO;
        [cell removeFromSuperview];
        return vc;
    }

    return nil;
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 18;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CollectionViewCell *myCell = [collectionView
                                    dequeueReusableCellWithReuseIdentifier:@"MyCell"
                                    forIndexPath:indexPath];
    self.bubble = [UIImage imageNamed:@"regularbubble.png"];
    myCell.imageView.image = self.bubble;
    myCell.backgroundColor = [UIColor greenColor];
    myCell.backgroundView.layer.backgroundColor = [[UIColor clearColor]CGColor];
    return myCell;
}

#pragma mark <UICollectionViewDelegate>


// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView cellForItemAtIndexPath:indexPath];

    self.bubble = [UIImage imageNamed:@"popped.png"];
	return YES;
}

// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView cellForItemAtIndexPath:indexPath];


    return YES;
}



// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}


@end
