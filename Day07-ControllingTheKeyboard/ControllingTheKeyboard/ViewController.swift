//
//  ViewController.swift
//  ControllingTheKeyboard
//
//  Created by 柯孟成 on 2016/4/7.
//  Copyright © 2016年 ko88201. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var text: UITextField!
    
    @IBAction func button(sender: AnyObject) {
        
        label.text = text.text
        
    }
    
    
    @IBOutlet var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.text.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        
        self.view.endEditing(true)
        
        label.text = text.text
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        
        textField.resignFirstResponder()
        
        label.text = text.text
        
        return true
        
        
        
    }

}

