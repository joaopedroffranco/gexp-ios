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
    
    let url: URL?

    lazy var screen: WebViewScreen = {
        let view = WebViewScreen()
        view.navigationDelegate = self
        return view
    }()
    
    override func loadView() {
        super.loadView()
        view = screen
    }
    
    init(url: URL? = URL(string: "https://gexperience-alpha.netlify.app/")) {
        self.url = url
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadURL()
    }
    
    private func loadURL() {
        guard let url = url else { return }

        let urlRequest = URLRequest(url: url)
        screen.load(urlRequest)
        screen.allowsBackForwardNavigationGestures = true
    }
}

extension WebViewController: WKNavigationDelegate {
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        if navigationAction.navigationType == .linkActivated, let nextURL = navigationAction.request.url {
            decisionHandler(.cancel)
            
            let nextWebViewController = WebViewController(url: nextURL)
            navigationController?.pushViewController(nextWebViewController, animated: true)
        } else {
            decisionHandler(.allow)
        }
    }
}

