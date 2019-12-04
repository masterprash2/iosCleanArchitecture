//
//  ViewController.swift
//  TestArchitecture
//
//  Created by Prashant Rathore on 20/08/19.
//  Copyright © 2019 RG. All rights reserved.
//

import UIKit

// @saber.scope(App)
// @saber.injectOnly
class HomeViewController: UIViewController {
    
    
    var rootView : HomeRootView?
    
    // @saber.inject
    var controller : HomeController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.rootView = self.view as? HomeRootView
        self.rootView?.bind(controller: controller!)
        controller?.setup()
    }
    
    
}


