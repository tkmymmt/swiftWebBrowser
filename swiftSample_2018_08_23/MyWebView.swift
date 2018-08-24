//
//  MyWebView.swift
//  swiftSample_2018_08_23
//
//  Created by kobayashitatsuya on 2018/08/23.
//  Copyright © 2018年 org. All rights reserved.
//

import Foundation
import UIKit
import WebKit

class MyWebView: UIView
{
    let navigationViewHeight: Double = 30;

    var view: UIView!
    var webView: WKWebView!
    var tabBar: UITabBar!
    var textBar: UIView!
    
    public func cleateView() -> UIView
    {
        view = UIView()
        
        textBar = UITabBar()
        
        
        webView = WKWebView()
        webView.translatesAutoresizingMaskIntoConstraints = false
        
        let webUrl = URL(string: "https://www.google.co.jp/")!
        let myRequest = URLRequest(url: webUrl)
        webView.load(myRequest)
        
        view.addSubview(webView)
        
        webView.translatesAutoresizingMaskIntoConstraints = false
        webView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        webView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        webView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        webView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true

        tabBar = UITabBar()
        
        let buttonHome = UITabBarItem()
        let buttonReload = UITabBarItem()
        let buttonFavorite = UITabBarItem()
        
        tabBar.items?.append(buttonHome)
        tabBar.items?.append(buttonReload)
        tabBar.items?.append(buttonFavorite)
        
        return view
    }
}
