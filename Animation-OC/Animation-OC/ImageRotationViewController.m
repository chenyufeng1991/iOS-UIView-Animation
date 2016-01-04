//
//  ImageRotationViewController.m
//  Animation-OC
//
//  Created by chenyufeng on 16/1/4.
//  Copyright © 2016年 chenyufengweb. All rights reserved.
//

#import "ImageRotationViewController.h"

#define kScreenWidth [[UIScreen mainScreen] bounds].size.width
#define kScreenHeight [[UIScreen mainScreen] bounds].size.height

/**
 *  在该示例中对UIImage进行旋转，注意不是对UIImageView旋转，这可以满足更多自定义的需求；
 */
@interface ImageRotationViewController ()

@end

@implementation ImageRotationViewController

- (void)viewDidLoad {

  [super viewDidLoad];
  /**
   UIImageOrientationUp,            // default orientation
   UIImageOrientationDown,          // 180 deg rotation
   UIImageOrientationLeft,          // 90 deg CCW
   UIImageOrientationRight,         // 90 deg CW
   UIImageOrientationUpMirrored,    // as above but image mirrored along other axis. horizontal flip
   UIImageOrientationDownMirrored,  // horizontal flip
   UIImageOrientationLeftMirrored,  // vertical flip
   UIImageOrientationRightMirrored, // vertical flip
   */
  UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, kScreenHeight / 2, 80, kScreenWidth)];
  UIImage *image = [UIImage imageNamed:@"1"];
  /**
   *  以下方法让一张图片一开始就处于旋转状态，而不是正放的状态；注意是对UIImage的操作，而不是对UIimageView控件的操作；最后再把image放入控件即可。
   */
  UIImage *imageRotate = [UIImage imageWithCGImage:image.CGImage scale:1 orientation:UIImageOrientationLeft];
  [imageView setImage:imageRotate];
  [self.view addSubview:imageView];
  [UIView animateWithDuration:2 animations:^{
    imageView.transform = CGAffineTransformRotate(imageView.transform, M_PI_2);
    imageView.frame = CGRectMake(0, 64, kScreenWidth, 80);
  }];
}

@end
