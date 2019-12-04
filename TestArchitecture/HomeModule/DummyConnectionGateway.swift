//
//  DummyConnectionGateway.swift
//  TestArchitecture
//
//  Created by Prashant Rathore on 04/12/19.
//  Copyright © 2019 RG. All rights reserved.
//

import Foundation

// @saber.scope(App)
class DummyConnectionGateway: ConnectionGateway {
    
    // @saber.inject
    init() {
        
    }
    
    func isConnected() -> Bool {
        return false
    }
}
