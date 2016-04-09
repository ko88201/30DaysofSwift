//
//  ViewController.swift
//  DownloadingWebContent
//
//  Created by 柯孟成 on 2016/4/9.
//  Copyright © 2016年 ko88201. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string: "http://baseball.yahoo.co.jp/npb/")!
        
        webView.loadRequest(NSURLRequest(URL: url))
        
        // 以上是直接請求網頁頁面到 UIwebView
        // 以下是以html讀取並轉碼，可以取得較多可操作的資料
        
        /*
        let task = NSURLSession.sharedSession().dataTaskWithURL(url) { (data, response, error) -> Void in
            
            // Will happen when task completes
            
            if let urlContent = data {
                
                let webContent = NSString(data: urlContent, encoding: NSUTF8StringEncoding)
                
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    
                    self.webView.loadHTMLString(String(webContent!), baseURL: nil)
                })
                
                
                
            } else{
            
                // Show error massage
            }
            
            
        }
        
        task.resume()
        */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

