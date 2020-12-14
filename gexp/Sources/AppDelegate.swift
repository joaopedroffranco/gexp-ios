//
//  AppDelegate.swift
//  gexp
//
//  Created by Joao Pedro Fabiano Franco on 14/12/20.
//  Copyright © 2020 Dextra. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    lazy var window: UIWindow? = {
        let window = UIWindow(frame: UIScreen.main.bounds)
        return window
    }()

    lazy var mainNavigationController: UINavigationController = {
        let navigationController = UINavigationController(rootViewController: WebViewController())
        return navigationController
    }()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window?.rootViewController = mainNavigationController
        window?.makeKeyAndVisible()
        
        return true
    }

}

