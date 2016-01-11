//
//  OpacityViewController.swift
//  PositionAnimation01
//
//  Created by chenyufeng on 15/8/20.
//  Copyright (c) 2015年 chenyufengweb. All rights reserved.
//

import UIKit

class OpacityViewController: UIViewController {

    @IBOutlet weak var greenSquare: UIView!
  
    override func viewDidLoad() {

        super.viewDidLoad()
    }
  
    override func viewDidAppear(animated: Bool) {

        super.viewDidAppear(animated)
        func anim(){

            self.greenSquare.alpha = 0.2   //改变透明度到0.2
        }
        UIView.animateWithDuration(2, animations: anim)//时常为2s；
    }
}

