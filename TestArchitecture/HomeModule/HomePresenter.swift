//
//  HomePresenter.swift
//  TestArchitecture
//
//  Created by Prashant Rathore on 04/12/19.
//  Copyright © 2019 RG. All rights reserved.
//

import Foundation
import RxSwift
// @saber.scope(App)
class HomePresenter {
    
    let viewData : HomeViewData
    
    // @saber.inject
    init(viewData :HomeViewData) {
        self.viewData = viewData
    }
    
    func resetToDefaultState() {
        self.viewData.resetToDefaultState()
    }
    
    
    func subscribeLoadDataResponse(responseObservable : Observable<ResponseState>) -> Disposable {
         return responseObservable.observeOn(MainScheduler.instance).subscribe { (event) in
            if(event.element != nil ) {
                switch event.element! {
                case .SUCCESS: self.viewData.showSuccess()
                case .OFFLINE: self.viewData.showFailure(errorMessage: "Offline")
                case .SERVER_FAILURE: self.viewData.showFailure(errorMessage: "Server Failed")
                }
            }
        }

    }
    
}
