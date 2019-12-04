//
//  ConnectionGatewayProvider.swift
//  TestArchitecture
//
//  Created by Prashant Rathore on 04/12/19.
//  Copyright © 2019 RG. All rights reserved.
//

import Foundation


// @saber.scope(App)
// @saber.cached
class ConnectionGatewayProvider {
    
    let gateway : DummyConnectionGateway
    
    // @saber.inject
    init(gateway : DummyConnectionGateway) {
        self.gateway = gateway
    }
    
    
    // @saber.provider
    func provides() -> ConnectionGateway {
        return gateway
    }
    
}
