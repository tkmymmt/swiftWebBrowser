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
    var textBar: UITabBar!
    
    func cleateView() -> UIView
    {
        view = UIView()
        webView = WKWebView()
        
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
