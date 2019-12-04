////
////  HomeInteractor.swift
////  TestArchitecture
////
////  Created by Prashant Rathore on 22/11/19.
////  Copyright © 2019 RG. All rights reserved.
////
//
import UIKit
import RxSwift

enum ResponseState {
    case SUCCESS
    case SERVER_FAILURE
    case OFFLINE
}


// @saber.scope(App)
class HomeInteractor {
    
    private let dataGateway : DataGateway
    private let connection : ConnectionGateway
    
    // @saber.inject
    init(dataGateway : DataGateway, connectionGateway : ConnectionGateway) {
        self.dataGateway = dataGateway
        self.connection = connectionGateway
    }
    
    func fetchData(url: String) -> Observable<ResponseState> {
    
        if(!self.connection.isConnected()) {
            return Observable<ResponseState>.just( ResponseState.OFFLINE)
        }
        
        return self.dataGateway.loadUrlContent(url: url).map {
            if($0.isSuccess) {
                return ResponseState.SUCCESS
            }
            else {
                return ResponseState.SERVER_FAILURE
            }
        }
    }
    
}


