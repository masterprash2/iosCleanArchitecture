//
//  DummyDataGateway.swift
//  TestArchitecture
//
//  Created by Prashant Rathore on 04/12/19.
//  Copyright © 2019 RG. All rights reserved.
//

import Foundation
import RxSwift
// @saber.scope(App)
class DummyDataGateway: DataGateway {
    
    // @saber.inject
    init() {
        
    }
    
    func loadUrlContent(url: String) -> Observable<DataResponse> {
        return Observable.just(DataResponse( true,Data()))
    }
}
