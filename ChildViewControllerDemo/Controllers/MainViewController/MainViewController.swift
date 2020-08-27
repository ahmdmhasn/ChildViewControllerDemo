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
  
  private lazy var menuItem = UIBarButtonItem(barButtonSystemItem: .compose, target: self, action: nil)
  
  private lazy var addItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: nil)
  
  // MARK: Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    configureNavBar()
    
    view.backgroundColor = .yellow
  }
  
  // MARK: Configuration
  
  private func configureNavBar() {
    navigationItem.leftBarButtonItem = menuItem
    navigationItem.rightBarButtonItem = addItem
  }
  
}
