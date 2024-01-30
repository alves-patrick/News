//
//  GenericDataProvider.swift
//  News
//
//  Created by Patrick Alves on 1/30/24.
//

import Foundation

protocol GenericDataProvider {
    func success(model: Any)
    func errorData(_ provide: GenericDataProvider?, error: Error)
}

class DataProviderManager<T, S> {
    var delegate: T?
    var model: S?
}
