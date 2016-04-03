//
//  ViewController.swift
//  eggTimer
//
//  Created by 柯孟成 on 2016/4/3.
//  Copyright © 2016年 ko88201. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = NSTimer()
    var time = 0
    var startCheck = true
    
    @IBOutlet var timerLabel: UILabel!
    
    func increaseTime() {
        
        time++
        timerLabel.text = "\(time)"
    
    }
    
    @IBAction func play(sender: AnyObject) {
        
        if startCheck == true {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTime"), userInfo: nil, repeats: true)
        }
        startCheck = false
    }
    
    
    @IBAction func pause(sender: AnyObject) {
        
        timer.invalidate()
        startCheck = true
        
    }
    
    
    @IBAction func reset(sender: AnyObject) {
        
        timer.invalidate()
        
        time = 0
        timerLabel.text = "0"
        
        startCheck = true
        
    }
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

