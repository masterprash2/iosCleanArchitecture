//
//  NetworkDataGateway.swift
//  TestArchitecture
//
//  Created by Prashant Rathore on 04/12/19.
//  Copyright © 2019 RG. All rights reserved.
//

import Foundation
import RxSwift

// @saber.scope(App)
class NetworkDataGateway: DataGateway {
    
    // @saber.inject
    init() {
        
    }
    
    func loadUrlContent(url: String) -> Observable<DataResponse> {
        let requestUrl = URL.init(string: url)!
        return Observable.create { (emitter) -> Disposable in
                let urlRequest = URLRequest(url: requestUrl)
                URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
                    if let data = data, error == nil {
                        emitter.onNext(DataResponse(true,Data()))
                    } else {
                        emitter.onNext(DataResponse(false,nil))
                    }
                }.resume()
                return Disposables.create()
        }.subscribeOn(SerialDispatchQueueScheduler.init(queue: DispatchQueue.init(label: "name"), internalSerialQueueName: "name")).asDriver(onErrorJustReturn: DataResponse(false,nil)).asObservable()
    }
}
