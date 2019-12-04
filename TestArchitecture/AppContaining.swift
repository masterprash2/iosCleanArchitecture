//
//  AppContaining.swift
//  TestArchitecture
//
//  Created by Prashant Rathore on 04/12/19.
//  Copyright © 2019 RG. All rights reserved.
//

import Foundation

// @saber.container(AppContainer)
// @saber.scope(App)
protocol AppContaining {
    
    func injectTo(homeViewController : HomeViewController)
    
}
