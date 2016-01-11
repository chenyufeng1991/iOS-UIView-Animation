//
//  TimingViewController.swift
//  PositionAnimation01
//
//  Created by chenyufeng on 15/11/9.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

import UIKit

//重复动画；
class RepeatViewController: UIViewController {
  
  @IBOutlet weak var blueSquare: UIView!
  @IBOutlet weak var redSquare: UIView!
  @IBOutlet weak var greenSquare: UIView!
  
  override func viewDidLoad() {

    super.viewDidLoad()
  }
  
  override func viewDidAppear(animated: Bool) {

    super.viewDidAppear(animated);
    UIView.animateWithDuration(1) { () -> Void in
      self.blueSquare.center.x = self.view.bounds.width - self.blueSquare.center.x
    }
    
    UIView.animateWithDuration(1, delay: 0, options: UIViewAnimationOptions.Repeat, animations: { () -> Void in
      self.redSquare.center.x = self.view.bounds.width - self.redSquare.center.x;
      }, completion: nil)

    //注意这里options的表达式；
    UIView.animateWithDuration(1, delay: 0, options:[UIViewAnimationOptions.Repeat ,UIViewAnimationOptions.Autoreverse], animations: { () -> Void in
      self.greenSquare.center.x = self.view.bounds.width - self.greenSquare.center.x;
      }, completion: nil)
  }
}
