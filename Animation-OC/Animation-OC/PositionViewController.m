

//
//  PositionViewController.m
//  Animation-OC
//
//  Created by chenyufeng on 15/12/31.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import "PositionViewController.h"

@interface PositionViewController ()

@property (weak, nonatomic) IBOutlet UIView *redSquare;
@property (weak, nonatomic) IBOutlet UIView *greenSquare;

@end

@implementation PositionViewController

- (void)viewDidLoad {

  [super viewDidLoad];
}


- (void)viewWillAppear:(BOOL)animated{

  [super viewWillAppear:animated];
  [UIView animateWithDuration:2 animations:^{

    self.redSquare.frame = CGRectMake(self.redSquare.frame.origin.x, 400, self.redSquare.bounds.size.width, self.redSquare.bounds.size.height);
    self.greenSquare.frame = CGRectMake(200, 500, self.greenSquare.bounds.size.width, self.greenSquare.bounds.size.height);
  }];
}

@end
