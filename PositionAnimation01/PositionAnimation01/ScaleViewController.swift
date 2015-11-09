//
//  ScaleViewController.swift
//  PositionAnimation01
//
//  Created by chenyufeng on 15/8/20.
//  Copyright (c) 2015年 chenyufengweb. All rights reserved.
//

import UIKit

class ScaleViewController: UIViewController {

    
    
    @IBOutlet weak var greenSquare: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        func anim(){
        
            self.greenSquare.transform = CGAffineTransformMakeScale(0.5, 0.5)//缩小为原来的0.5倍；
        }
        
        
        UIView.animateWithDuration(1, animations: anim)
        
        
        
    }

}












