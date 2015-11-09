//
//  EasingViewController.swift
//  PositionAnimation01
//
//  Created by chenyufeng on 15/11/9.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

import UIKit

class EasingViewController: UIViewController {

  
  @IBOutlet weak var blueSquare: UIView!
  @IBOutlet weak var redSquare: UIView!
  @IBOutlet weak var greenSquare: UIView!
  
  @IBOutlet weak var yellowSquare: UIView!
  
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


  override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated);
    
    UIView.animateWithDuration(1) { () -> Void in
      
      self.blueSquare.center.x = self.view.bounds.width - self.blueSquare.center.x
    }
    
    UIView.animateWithDuration(1, delay: 0, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
      self.redSquare.center.x = self.view.bounds.width - self.redSquare.center.x
      }, completion: nil)
    
    UIView.animateWithDuration(1, delay: 0, options: UIViewAnimationOptions.CurveEaseOut, animations: { () -> Void in
      self.greenSquare.center.x = self.view.bounds.width - self.greenSquare.center.x
      }, completion: nil)
    
    UIView.animateWithDuration(1, delay: 0, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
      self.yellowSquare.center.x = self.view.bounds.width - self.yellowSquare.center.x
      }, completion: nil)
    
    
    
  }
  


}
