
//
//  RotationViewController.m
//  Animation-OC
//
//  Created by chenyufeng on 15/12/31.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import "RotationViewController.h"

@interface RotationViewController ()

@property (weak, nonatomic) IBOutlet UIView *greenSquare;//旋转一次；

@property (weak, nonatomic) IBOutlet UIView *redSquare;//旋转无数次；


@end

@implementation RotationViewController

- (void)viewDidLoad {
    [super viewDidLoad];


}

- (void)viewWillAppear:(BOOL)animated{

  [super viewWillAppear:animated];


  [self spinGreenSquare];
  [self spinRedSquare];

  
}



- (void)spinGreenSquare{
  [UIView animateWithDuration:2 animations:^{

    self.greenSquare.transform = CGAffineTransformRotate(self.greenSquare.transform, M_PI);//一个PI，180度；
  } completion:^(BOOL finished) {

  }];

}

- (void)spinRedSquare{

  [UIView animateWithDuration:1 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
  self.redSquare.transform = CGAffineTransformRotate(self.redSquare.transform, 360);//一个PI，180度；
  } completion:^(BOOL finished) {
    [self spinRedSquare];
  }];
  
}

@end
