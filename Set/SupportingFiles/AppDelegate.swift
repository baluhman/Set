//
//  AppDelegate.swift
//  Set
//
//  Created by baluhman on 3/15/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
        let mainVC = MainViewController()
        let navigationController = UINavigationController(rootViewController: mainVC)
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
        return true
    }
}

