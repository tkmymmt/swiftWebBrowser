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
    var masterView: UIView!
    var topPadding: CGFloat = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool)
    {
        if #available(iOS 11, *) {
            let window = UIApplication.shared.keyWindow
            topPadding = window!.safeAreaInsets.top
        }
        
        let webView = MyWebView()
        masterView = webView.cleateView()
        masterView.translatesAutoresizingMaskIntoConstraints = false

        super.view.addSubview(masterView)
        
        let guide = super.view.safeAreaLayoutGuide
        masterView.topAnchor.constraint(equalTo: guide.topAnchor).isActive = true
        masterView.heightAnchor.constraint(equalTo: guide.heightAnchor).isActive = true
        masterView.leftAnchor.constraint(equalTo: guide.leftAnchor).isActive = true
        masterView.widthAnchor.constraint(equalTo: guide.widthAnchor).isActive = true
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
