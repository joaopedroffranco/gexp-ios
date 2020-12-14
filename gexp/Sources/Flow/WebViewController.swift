//
//  ViewController.swift
//  gexp
//
//  Created by Joao Pedro Fabiano Franco on 14/12/20.
//  Copyright © 2020 Dextra. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    lazy var screen: WebViewScreen = {
        let view = WebViewScreen()
        return view
    }()
    
    override func loadView() {
        super.loadView()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

