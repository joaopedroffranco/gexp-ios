//
//  WebViewScreen.swift
//  gexp
//
//  Created by Joao Pedro Fabiano Franco on 14/12/20.
//  Copyright © 2020 Dextra. All rights reserved.
//

import UIKit
import WebKit

class WebViewScreen: WKWebView {
    
    override init(frame: CGRect, configuration: WKWebViewConfiguration) {
        super.init(frame: frame, configuration: configuration)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension WebViewScreen: ViewCodable {
    func buildViewHierarchy() {}
    
    func setupConstraints() {}
    
    func additionalSetup() {}
}
