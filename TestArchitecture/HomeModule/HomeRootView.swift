//
//  HomeRootView.swift
//  TestArchitecture
//
//  Created by Prashant Rathore on 04/12/19.
//  Copyright © 2019 RG. All rights reserved.
//

import Foundation
import UIKit
import RxSwift
import RxCocoa

class HomeRootView: UIView {
    
    
    @IBOutlet weak var fetchButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var messageLabel : UILabel!
    
    var controller : HomeController?
    
    var disposableBag = DisposeBag()
    
    
    func bind(controller : HomeController) {
        let viewData = controller.getViewData()
        viewData.obsereFetchButtonVisibilityChanges().bind(to: fetchButton.rx.isHidden).disposed(by: disposableBag)
        viewData.obsereResetButtonVisibilityChanges().bind(to: resetButton.rx.isHidden).disposed(by: disposableBag)
        viewData.obsereMessage().bind(to: messageLabel.rx.text).disposed(by: disposableBag)
        
        self.controller = controller
        controller.fetchDataReactive(buttonObserverable:  fetchButton.rx.controlEvent(UIControl.Event.touchUpInside).asObservable().debounce(RxTimeInterval.microseconds(300), scheduler: MainScheduler.init())).disposed(by: disposableBag)
    }
    

    @IBAction func resetButtonClicked(_ sender: UIButton) {
        self.controller?.reset()
    }
    
}
