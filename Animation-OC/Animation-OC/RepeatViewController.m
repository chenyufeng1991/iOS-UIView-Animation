


//
//  RepeatViewController.m
//  Animation-OC
//
//  Created by chenyufeng on 15/12/31.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import "RepeatViewController.h"

@interface RepeatViewController ()

@property (weak, nonatomic) IBOutlet UIView *greenSquare;
@property (weak, nonatomic) IBOutlet UIView *redSquare;

@end

@implementation RepeatViewController

- (void)viewDidLoad {

  [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated{

  [super viewWillAppear:animated];
  [UIView animateWithDuration:2 delay:0 options:UIViewAnimationOptionRepeat animations:^{
    self.greenSquare.frame = CGRectMake(250, self.greenSquare.frame.origin.y, self.greenSquare.frame.size.width, self.greenSquare.frame.size.height);
  } completion:^(BOOL finished) {
  }];

  [UIView animateWithDuration:2 delay:0 options:UIViewAnimationOptionRepeat|UIViewAnimationOptionAutoreverse animations:^{

    self.redSquare.frame = CGRectMake(250, self.redSquare.frame.origin.y, self.redSquare.frame.size.width, self.redSquare.frame.size.height);
  } completion:^(BOOL finished) {
  }];
}

@end
