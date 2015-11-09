//
//  PositionViewController.swift
//  PositionAnimation01
//
//  Created by chenyufeng on 15/8/19.
//  Copyright (c) 2015年 chenyufengweb. All rights reserved.
//

import UIKit

class PositionViewController: UIViewController {

    
    @IBOutlet weak var greenSquare: UIView!
    @IBOutlet weak var redSquare: UIView!
    @IBOutlet weak var blueSquare: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(animated: Bool) {
        
        
        //闭包函数的定义；
        //注意调用动画的方法中的animations,completion使用的都是闭包函数；可以直接在外面定义，里面调用，这样代码更加清晰；
        func completeGreen(v:Bool){
        
            print("Green Completion")
            
        }
        
        func completeRed(v:Bool){
            
            print("Red Completion")
            
        }
        
        func completeBlue(v:Bool){
            
            print("Blue Completion")
            
        }
        
        
        func animGreen(){
        
              self.greenSquare.center.x = self.view.bounds.width - self.greenSquare.center.x
        }
        
        func animRed(){
        
             self.redSquare.center.y = self.view.bounds.height - self.redSquare.center.y
        }
        
        func animBlue(){
        
            self.blueSquare.center.y = self.view.bounds.height - self.blueSquare.center.y
            self.blueSquare.center.x = self.view.bounds.width - self.blueSquare.center.x
        }
        

        //参数delay表示延迟，第一个参数表示动画时间；
        //注意调用闭包函数；
        UIView.animateWithDuration(1, delay: 0, options: [], animations: animGreen, completion: completeGreen)
        
        
        UIView.animateWithDuration(1, delay: 0.5, options: [], animations: animRed, completion: completeRed)
        
        UIView.animateWithDuration(1, delay: 1, options: [], animations: animBlue, completion: completeBlue)
        

        /*
        参数提示中：
        ()->Void:表示参数为空，返回值为Void，必须要实现这个闭包函数；
        <#((Bool) -> Void)?##(Bool) -> Void#>：表示参数为Bool类型，返回值为Void，后面的？表示这个闭包函数可以为空；
        
        */
        
//        UIView.animateWithDuration(<#duration: NSTimeInterval#>, delay: <#NSTimeInterval#>, options: <#UIViewAnimationOptions#>, animations: <#() -> Void##() -> Void#>, completion: <#((Bool) -> Void)?##(Bool) -> Void#>)
        
        
    }
    

}
