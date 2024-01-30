//
//  ViewController.swift
//  News
//
//  Created by Patrick Alves on 1/30/24.
//

import UIKit

class NewsListViewController: UIViewController, NewsListLocalDataProviderProtocol, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var newsListTableView: UITableView!
       
    
    
    private var newsList: [NewsModel]? {
        didSet {
            self.newsListTableView.reloadData()
        }
    }
    
    
    var localDataProvider: NewsListLocalDataProvider?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupTableView()
        self.initLocalDataProvider()
    }
    
    private func setupTableView() {
        self.newsListTableView.delegate = self
        self.newsListTableView.dataSource = self
    }
    
    private func initLocalDataProvider() {
        self.localDataProvider = NewsListLocalDataProvider()
        self.localDataProvider?.delegate = self
        self.localDataProvider?.getNewsList()
    }
    
    func success(model: Any) {
        self.newsList = model as? [NewsModel]
    }
    
    func errorData(_ provide: GenericDataProvider?, error: Error){
        print(error.localizedDescription)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("didSelectRowAt")
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.newsList?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

