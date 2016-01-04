
//
//  ColorViewController.m
//  Animation-OC
//
//  Created by chenyufeng on 15/12/31.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

#import "ColorViewController.h"

@interface ColorViewController ()

@property (weak, nonatomic) IBOutlet UIView *greenSquare;

@end

@implementation ColorViewController

- (void)viewDidLoad {

  [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated{

  [super viewWillAppear:animated];
  [UIView animateWithDuration:2 animations:^{
    //宽高缩放比；
    self.greenSquare.backgroundColor = [UIColor brownColor];
  }];
}

@end
