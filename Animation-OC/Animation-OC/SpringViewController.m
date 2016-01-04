
//
//  SpringViewController.m
//  Animation-OC
//
//  Created by chenyufeng on 15/12/31.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import "SpringViewController.h"

@interface SpringViewController ()

@property (weak, nonatomic) IBOutlet UIView *greenSquare;
@property (weak, nonatomic) IBOutlet UIView *redSquare;


@end

@implementation SpringViewController

- (void)viewDidLoad {
    [super viewDidLoad];

  
}


- (void)viewWillAppear:(BOOL)animated{

  [super viewWillAppear:animated];

  //通过设置参数即可改变不同的状态；
  [UIView animateWithDuration:2 delay:0.5 usingSpringWithDamping:0.2 initialSpringVelocity:0 options:UIViewAnimationOptionTransitionNone animations:^{

    self.greenSquare.frame = CGRectMake(250, self.greenSquare.frame.origin.y, self.greenSquare.frame.size.width, self.greenSquare.frame.size.height);

  } completion:nil];

  [UIView animateWithDuration:2 delay:0.5 usingSpringWithDamping:0.2 initialSpringVelocity:1 options:UIViewAnimationOptionTransitionNone animations:^{

    self.redSquare.frame = CGRectMake(250, self.redSquare.frame.origin.y, self.redSquare.frame.size.width, self.redSquare.frame.size.height);

  } completion:nil];
  
}

@end
