//
//  ViewController.swift
//  News
//
//  Created by Patrick Alves on 1/30/24.
//

import UIKit

class ViewController: UIViewController, NewsListLocalDataProviderProtocol {
    
    var localDataProvider: NewsListLocalDataProvider?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.initLocalDataProvider()
    }

    private func initLocalDataProvider() {
        self.localDataProvider = NewsListLocalDataProvider()
        self.localDataProvider?.delegate = self
        self.localDataProvider?.getNewsList()
    }
    
    func success(model: Any) {
        print("\(model)")
    }
    
    func errorData(_ provide: GenericDataProvider?, error: Error){
        print(error.localizedDescription)
    }
}

