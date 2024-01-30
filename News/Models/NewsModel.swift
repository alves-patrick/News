//
//  NewsModel.swift
//  News
//
//  Created by Patrick Alves on 1/30/24.
//

import Foundation

struct NewsModel: Codable {
    
    var source: SourceModel
    var author: String?
    var title: String
    var description: String?
    var url: String
    var urlToImage: String?
    var publishedAt: Date
    var content: String?
    
}
