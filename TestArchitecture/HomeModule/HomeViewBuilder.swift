//
//  HomeViewBuilder.swift
//  TestArchitecture
//
//  Created by Prashant Rathore on 25/11/19.
//  Copyright © 2019 RG. All rights reserved.
//

import UIKit

class HomeViewBuilder {
    
    static func assembelModule() -> UIViewController {
        
        let view = UIStoryboard(name:"Main",bundle: Bundle.main).instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        
        let appContainer = AppContainer()
        appContainer.injectTo(homeViewController: view)
        return view
    }
    
}
