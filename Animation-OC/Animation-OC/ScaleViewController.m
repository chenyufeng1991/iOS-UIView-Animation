
//
//  ScaleViewController.m
//  Animation-OC
//
//  Created by chenyufeng on 15/12/31.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import "ScaleViewController.h"

@interface ScaleViewController ()

@property (weak, nonatomic) IBOutlet UIView *redSquare;

@end

@implementation ScaleViewController

- (void)viewDidLoad {

  [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated{

  [super viewWillAppear:animated];
  [UIView animateWithDuration:2 animations:^{
    //宽高缩放比；
    self.redSquare.transform = CGAffineTransformMakeScale(2, 3);
  }];
}

@end
