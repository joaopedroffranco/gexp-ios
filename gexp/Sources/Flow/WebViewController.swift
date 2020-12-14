//
//  ViewController.swift
//  gexp
//
//  Created by Joao Pedro Fabiano Franco on 14/12/20.
//  Copyright © 2020 Dextra. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    lazy var screen: WebViewScreen = {
        let view = WebViewScreen()
        view.navigationDelegate = self
        return view
    }()
    
    override func loadView() {
        super.loadView()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadURL()
    }
    
    private func loadURL() {
        guard let url = URL(string: "https://www.hackingwithswift.com/") else { return }

        let urlRequest = URLRequest(url: url)
        screen.load(urlRequest)
        screen.allowsBackForwardNavigationGestures = true
    }
}

extension WebViewController: WKNavigationDelegate {
    
}

