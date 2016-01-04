

//
//  OpacityViewController.m
//  Animation-OC
//
//  Created by chenyufeng on 15/12/31.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import "OpacityViewController.h"

@interface OpacityViewController ()

@property (weak, nonatomic) IBOutlet UIView *redSquare;

@end

@implementation OpacityViewController

- (void)viewDidLoad {

  [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated{

  [super viewWillAppear:animated];
  [UIView animateWithDuration:2 animations:^{
    self.redSquare.alpha = 0.3;
  }];
}

@end
