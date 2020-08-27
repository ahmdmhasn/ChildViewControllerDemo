//
//  UIViewController+ChildViewControllers.swift
//  ChildViewControllerDemo
//
//  Created by Ahmed M. Hassan on 8/27/20.
//  Copyright © 2020 Ahmed M. Hassan. All rights reserved.
//

import UIKit

extension UIViewController {
  
  /// Add Child `ViewController` as Subview to `ContentView`
  ///
  func addChildViewController(viewController: UIViewController, to contentView: UIView) {
    // Add Child View Controller
    addChild(viewController)
    
    // Add Child View as Subview
    contentView.addSubview(viewController.view)
    
    // Configure Child View
    viewController.view.frame = contentView.bounds
    viewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    
    // Notify Child View Controller
    viewController.didMove(toParent: self)
  }
  
  /// Remove Child `ViewController` From Superview
  ///
  func removeChildViewController(viewController: UIViewController) {
    // Notify Child View Controller
    viewController.willMove(toParent: nil)
    
    // Remove Child View From Superview
    viewController.view.removeFromSuperview()
    
    // Notify Child View Controller
    viewController.removeFromParent()
  }

}
