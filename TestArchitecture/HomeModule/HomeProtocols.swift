//
//  HomeProtocols.swift
//  TestArchitecture
//
//  Created by Rahul Goyal on 25/11/19.
//  Copyright © 2019 RG. All rights reserved.
//

import Foundation

protocol ViewToInteractorProtocol: class {
    var presenter:InteractorToPresenterProtocol? {get set}
    func fetchData()
    func resetData()
}

protocol InteractorToPresenterProtocol: class {
    var viewModel:dataViewModel? { get set}
    func noticeFetchedSuccess(flag:Bool)
}







