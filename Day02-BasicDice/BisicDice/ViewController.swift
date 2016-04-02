//
//  ViewController.swift
//  BisicDice
//
//  Created by 柯孟成 on 2016/4/2.
//  Copyright © 2016年 ko88201. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var number: UILabel!
    @IBAction func goButton(sender: AnyObject) {
      
        number.text = String(arc4random_uniform(7) + 1 )
        
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

