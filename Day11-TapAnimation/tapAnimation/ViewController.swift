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
    
    
    @IBOutlet var rockman: UIImageView!
    
    
    
    @IBAction func goButton(sender: AnyObject) {
        
        print(counter)
        
        if counter == 28 {
            
            counter = 1
            
        } else {
        
            counter++
            
            rockman.image = UIImage(named: "rockman\(counter).png")
            
        
        }
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

