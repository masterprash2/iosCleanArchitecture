//
//  HomeViewData.swift
//  TestArchitecture
//
//  Created by Prashant Rathore on 04/12/19.
//  Copyright © 2019 RG. All rights reserved.
//

import Foundation
import RxSwift
import RxRelay

// @saber.scope(App)
class HomeViewData {
    
    private let canHideFetchButton = BehaviorRelay(value: true)
    private let canHideResetButton = BehaviorRelay(value: false)
    private let canHideActivityIndicator = BehaviorRelay(value: false)
    private let message = BehaviorRelay(value: "Its working")
    
    // @saber.inject
    init() {
        
    }
    
    func obsereFetchButtonVisibilityChanges() -> Observable<Bool> {
        return canHideFetchButton.asObservable()
    }
    
    func obsereResetButtonVisibilityChanges() -> Observable<Bool> {
        return canHideResetButton.asObservable()
    }
    
    func obsereLoaderVisibilityChanges() -> Observable<Bool> {
        return canHideActivityIndicator.asObservable()
    }
    
    func obsereMessage() -> Observable<String> {
        return self.message.asObservable()
    }
    
    internal func resetToDefaultState() {
        canHideFetchButton.accept(false)
        canHideResetButton.accept(true)
        canHideActivityIndicator.accept(true)
        message.accept("Press the Fetch Button")
    }
    
    internal func showLoadingState() {
        canHideFetchButton.accept(true)
        canHideResetButton.accept(true)
        canHideActivityIndicator.accept(false)
        message.accept("Loading")
    }
    
    internal func showSuccess() {
        canHideFetchButton.accept(true)
        canHideResetButton.accept(false)
        canHideActivityIndicator.accept(true)
        message.accept("Succes")
    }
    
    internal func showFailure(errorMessage : String) {
        canHideFetchButton.accept(true)
        canHideResetButton.accept(false)
        canHideActivityIndicator.accept(true)
        message.accept(errorMessage)
    }
    
}
