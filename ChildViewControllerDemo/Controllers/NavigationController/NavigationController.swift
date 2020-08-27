//
//  NavigationController.swift
//  ChildViewControllerDemo
//
//  Created by Ahmed M. Hassan on 8/27/20.
//  Copyright © 2020 Ahmed M. Hassan. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    configureView()
  }
  
  private func configureView() {
    navigationBar.isTranslucent = true
    navigationBar.setBackgroundImage(UIImage(), for: .default)
    navigationBar.shadowImage = UIImage()    
  }
  
}
