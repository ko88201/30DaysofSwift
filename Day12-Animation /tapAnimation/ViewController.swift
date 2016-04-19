//
//  ViewController.swift
//  tapAnimation
//
//  Created by 柯孟成 on 2016/4/17.
//  Copyright © 2016年 ko88201. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var counter = 1
    
    var timer = NSTimer()
    
    var isAnimating = true
    
    @IBOutlet var rockman: UIImageView!
    
    @IBAction func goButton(sender: AnyObject) {
        
        if isAnimating == true {
            
            timer.invalidate()
            
            isAnimating = false
            
        } else {
            
            timer = NSTimer.scheduledTimerWithTimeInterval(0.08, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
            
            isAnimating = true
            
        }
        
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.08, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
    }
    
    func doAnimation() {
        
        if counter == 28 {
            
            counter = 1
            
        } else {
            
            counter = counter + 1
            
        }
        rockman.image = UIImage(named: "rockman\(counter).png")
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    override func viewDidLayoutSubviews() {
        
        //rockman.alpha = 0
        //rockman.center = CGPointMake(rockman.center.x - 400, rockman.center.y)
        
        //rockman.frame = CGRectMake(100, 20, 0, 0)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(1) { 
            
            //self.rockman.alpha = 1
            //self.rockman.center = CGPointMake(self.rockman.center.x + 400, self.rockman.center.y)
            
            //self.rockman.frame = CGRectMake(100, 20, 100, 200)
        }
 
        
    }*/
    
    
    
}

