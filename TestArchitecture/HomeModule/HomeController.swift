//
//  HomeController.swift
//  TestArchitecture
//
//  Created by Prashant Rathore on 04/12/19.
//  Copyright © 2019 RG. All rights reserved.
//

import Foundation
import RxSwift

// @saber.scope(App)
class HomeController {
    
    private let interactor : HomeInteractor
    private let presenter : HomePresenter
    
    // @saber.inject
    init(homeInteractor : HomeInteractor, presenter : HomePresenter) {
        self.interactor = homeInteractor
        self.presenter = presenter
    }
    
    func setup() {
        presenter.resetToDefaultState()
    }
    
    func fetchDataReactive(buttonObserverable : Observable<()>) -> Disposable {
        return presenter.subscribeLoadDataResponse(responseObservable:buttonObserverable.flatMap {
            self.interactor.fetchData(url: "https://www.google.com")
        })
    }
    
    func reset() {
        presenter.resetToDefaultState()
    }
    
    func getViewData() -> HomeViewData {
        return presenter.viewData
    }
    
}
