//
//  DataGateway.swift
//  TestArchitecture
//
//  Created by Prashant Rathore on 04/12/19.
//  Copyright © 2019 RG. All rights reserved.
//

import Foundation
import RxSwift

protocol DataGateway {
    func loadUrlContent(url : String) -> Observable<DataResponse>
}
