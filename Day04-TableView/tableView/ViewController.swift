//
//  ViewController.swift
//  tableView
//
//  Created by 柯孟成 on 2016/4/6.
//  Copyright © 2016年 ko88201. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    
    
    var cellContent = ["Tim", "Nike", "Adidas", "htc"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return cellContent.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = cellContent[indexPath.row]
        
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

