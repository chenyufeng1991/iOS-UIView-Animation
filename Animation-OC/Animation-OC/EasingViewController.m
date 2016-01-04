
//
//  EasingViewController.m
//  Animation-OC
//
//  Created by chenyufeng on 15/12/31.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import "EasingViewController.h"

@interface EasingViewController ()

@property (weak, nonatomic) IBOutlet UIView *greenSquare;

@property (weak, nonatomic) IBOutlet UIView *redSquare;


@end

@implementation EasingViewController

- (void)viewDidLoad {
    [super viewDidLoad];

  
}

- (void)viewWillAppear:(BOOL)animated{

  [super viewWillAppear:animated];

  //主要是设置options这个参数；
  [UIView animateWithDuration:2 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{

    self.greenSquare.frame = CGRectMake(250, self.greenSquare.frame.origin.y, self.greenSquare.frame.size.width, self.greenSquare.frame.size.height);

  } completion:nil];

  [UIView animateWithDuration:2 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{

    self.redSquare.frame = CGRectMake(250, self.redSquare.frame.origin.y, self.redSquare.frame.size.width, self.redSquare.frame.size.height);

  } completion:nil];
  
}

@end
