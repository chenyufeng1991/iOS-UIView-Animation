//
//  ColorViewController.swift
//  PositionAnimation01
//
//  Created by chenyufeng on 15/8/20.
//  Copyright (c) 2015年 chenyufengweb. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {

    @IBOutlet weak var greenSquare: UIView!
    @IBOutlet weak var swiftText: UILabel!
  
    override func viewDidLoad() {

        super.viewDidLoad()
    }

    override func viewDidAppear(animated: Bool) {

        super.viewDidAppear(animated)
        func anim(){

            self.greenSquare.backgroundColor = UIColor.blackColor()
            self.swiftText.textColor = UIColor.blueColor()
        }
        UIView.animateWithDuration(2, animations: anim)
    }
}
