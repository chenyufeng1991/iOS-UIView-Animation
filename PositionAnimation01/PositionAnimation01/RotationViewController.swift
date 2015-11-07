//
//  RotationViewController.swift
//  PositionAnimation01
//
//  Created by chenyufeng on 15/8/20.
//  Copyright (c) 2015年 chenyufengweb. All rights reserved.
//








/*
//这是第一个版本；




*/


import UIKit

class RotationViewController: UIViewController {

    
    @IBOutlet weak var wheel: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func spin(){
    
        UIView.animateWithDuration(1, delay: 0, options: .CurveLinear, animations: {
        
            self.wheel.transform = CGAffineTransformRotate(self.wheel.transform, CGFloat(360))//第二个参数是角度；
            }) {
        
                //结束后仍旧调用spin()函数；
                (finished)-> Void in
                self.spin()
        }
        
    }//spin()
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        self.spin()
    }

}












