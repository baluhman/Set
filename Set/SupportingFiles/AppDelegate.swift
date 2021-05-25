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
        
        setWindow()
        setNavBar()
        
        return true
    }
    
    private func setWindow() {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
    }
    
    private func setNavBar() {
        let navigationController = UINavigationController(rootViewController: MainViewController())
        window?.rootViewController = navigationController
        navigationController.navigationBar.backgroundColor = .black
        navigationController.navigationBar.barStyle = .black
        navigationController.navigationBar.isTranslucent = true
        navigationController.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
    }
}

