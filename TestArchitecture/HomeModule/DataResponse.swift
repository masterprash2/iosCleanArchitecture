//
//  DataResponse.swift
//  TestArchitecture
//
//  Created by Prashant Rathore on 04/12/19.
//  Copyright © 2019 RG. All rights reserved.
//

import Foundation


struct DataResponse {
    
    let isSuccess : Bool
    let data : Data?
    
    init(_ success : Bool,_  data : Data?) {
        self.isSuccess = success
        self.data = data
    }
}
