///Users/kobayashitatsuya/Projects/swiftSample_2018_08_23/swiftSample_2018_08_23
//  ViewController.swift
//  swiftSample_2018_08_23
//
//  Created by kobayashitatsuya on 2018/08/23.
//  Copyright © 2018年 org. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController
{
    var webView: WKWebView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool)
    {
        webView = WKWebView()
        webView.translatesAutoresizingMaskIntoConstraints = false
        
        let webUrl = URL(string: "https://www.google.co.jp/")!
        let myRequest = URLRequest(url: webUrl)
        webView.load(myRequest)
        
        super.view.addSubview(webView)
        
        webView.topAnchor.constraint(equalTo: super.view.topAnchor).isActive = true
        webView.heightAnchor.constraint(equalTo: super.view.heightAnchor).isActive = true
        webView.leftAnchor.constraint(equalTo: super.view.leftAnchor).isActive = true
        webView.widthAnchor.constraint(equalTo: super.view.widthAnchor).isActive = true
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
