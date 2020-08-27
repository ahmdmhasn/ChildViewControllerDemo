//
//  MainViewController.swift
//  ChildViewControllerDemo
//
//  Created by Ahmed M. Hassan on 8/27/20.
//  Copyright © 2020 Ahmed M. Hassan. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
  
  // MARK: Views
  
  @IBOutlet weak var contentView: UIView!
  
  private lazy var menuItem = UIBarButtonItem(barButtonSystemItem: .compose, target: self, action: nil)
  
  private lazy var addItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: nil)
  
  // MARK: Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    configureNavBar()
    configureChildViewController()
    
    view.backgroundColor = .yellow
  }

}

// MARK: Configuration
//
extension MainViewController {
  
  private func configureNavBar() {
    navigationItem.leftBarButtonItem = menuItem
    navigationItem.rightBarButtonItem = addItem
  }
  
  private func configureChildViewController() {
    let viewController = UIViewController()
    viewController.view.backgroundColor = .red
    
    let navController = UINavigationController(rootViewController: viewController)
    
    /// For demo clarifications purposes only.. Please don't use in a producton!
    ///
    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
      let vc2 = UIViewController()
      vc2.view.backgroundColor = .blue
      navController.pushViewController(vc2, animated: true)
    }
    
    addChildViewController(viewController: navController, to: contentView)
  }
}
