//
//  SpringViewController.swift
//  PositionAnimation01
//
//  Created by chenyufeng on 15/11/9.
//  Copyright © 2015年 chenyufengweb. All rights reserved.
//

import UIKit

class SpringViewController: UIViewController {

    @IBOutlet weak var blueSquare: UIView!
    @IBOutlet weak var redSquare: UIView!
    @IBOutlet weak var greenSquare: UIView!

    override func viewDidLoad() {

        super.viewDidLoad()
    }

    override func viewDidAppear(animated: Bool) {

        UIView.animateWithDuration(1) { () -> Void in
            self.blueSquare.center.x = self.view.bounds.width - self.blueSquare.center.x;
        }

        //第三个参数是阻尼，第四个参数是初始速度；第五个参数是动画类型；
        UIView.animateWithDuration(1, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0, options: UIViewAnimationOptions.TransitionNone, animations: { () -> Void in
            self.redSquare.center.x = self.view.bounds.width - self.redSquare.center.x;
            }) { (Bool) -> Void in
        }

        UIView.animateWithDuration(1, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 1, options: UIViewAnimationOptions.TransitionNone, animations: { () -> Void in
            self.greenSquare.center.x = self.view.bounds.width - self.greenSquare.center.x;
            }) { (Bool) -> Void in
        }
    }
}
