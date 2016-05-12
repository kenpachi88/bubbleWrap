//
//  miniVC.m
//  bubbleWrap
//
//  Created by kenny on 11/10/15.
//  Copyright © 2015 kenny. All rights reserved.
//

#import "miniVC.h"

@interface miniVC ()

@end

@implementation miniVC

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.view.window.frame = CGRectMake(10, 10, 50, 50);
    SystemSoundID completeSound;
    NSURL *audioPath = [[NSBundle mainBundle] URLForResource:@"bubblepop" withExtension:@"mp3"];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)audioPath, &completeSound);
    AudioServicesPlaySystemSound (completeSound);
//    self.imageView.image = [UIImage imageNamed:@"popped.png"];
    NSLog(@"Hihi");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
