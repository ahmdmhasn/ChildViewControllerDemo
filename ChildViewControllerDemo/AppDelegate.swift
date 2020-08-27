//
//  AppDelegate.swift
//  ChildViewControllerDemo
//
//  Created by Ahmed M. Hassan on 8/27/20.
//  Copyright © 2020 Ahmed M. Hassan. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    configureRootViewController()
    
    return true
  }

}

// MARK: - Configurations
//
private extension AppDelegate {
    
  func configureRootViewController() {
    
    let navController = NavigationController()
    let viewController = MainViewController()
    navController.pushViewController(viewController, animated: false)
    
    let window = UIWindow(frame: UIScreen.main.bounds)
    window.rootViewController = navController
    window.makeKeyAndVisible()
    self.window = window
  }
  
}
