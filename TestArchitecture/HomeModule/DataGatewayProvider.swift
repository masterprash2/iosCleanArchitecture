//
//  DataGatewayProvider.swift
//  TestArchitecture
//
//  Created by Prashant Rathore on 04/12/19.
//  Copyright © 2019 RG. All rights reserved.
//

import Foundation

// @saber.scope(App)
class DataGatewayProvder  {
    
    let gateway : DataGateway

    // @saber.inject
    init(gateway : DummyDataGateway) {
        self.gateway = gateway
    }
    
    // @saber.provider
    func provides() -> DataGateway {
        return gateway
    }
}
