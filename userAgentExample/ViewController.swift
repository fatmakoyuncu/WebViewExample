//
//  ViewController.swift
//  userAgentExample
//
//  Created by simurg on 17.09.2021.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    let webView = WKWebView()

    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.addSubview(webView)
        
        guard let url = URL(string: "https://ankageo.com") else {
            return
        }
        
        webView.load(URLRequest(url: url))
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        webView.frame = view.bounds
    }


}

