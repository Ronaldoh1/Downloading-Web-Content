//
//  ViewController.swift
//  Downloading Web Content
//
//  Created by Ronald Hernandez on 4/5/15.
//  Copyright (c) 2015 Ron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        //turn string to url.
        let url = NSURL(string: "http://www.stackoverflow.com")

        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {
            (data, response, error ) in

            if error == nil {

                var urlContent = NSString(data: data, encoding: NSUTF8StringEncoding)

                println(urlContent)

               // dispatch_async(dispatch_get_main_queue(), nil)
                
                self.webView.loadHTMLString(urlContent, baseURL: nil)



            }

        }

        task.resume()


    }



}

