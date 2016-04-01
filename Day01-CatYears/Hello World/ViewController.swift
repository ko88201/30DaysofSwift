//
//  ViewController.swift
//  Hello World
//
//  Created by 柯孟成 on 2016/3/22.
//  Copyright © 2016年 TimKo. All rights reserved.
//


import UIKit

class ViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    @IBOutlet var result: UILabel!
    
    @IBAction func submit(sender: AnyObject) {
        
        
        var catAge = Int(textField.text!)!
        
        catAge = catAge * 7
        
        result.text = "Your cat is \(catAge) in cat years."
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

