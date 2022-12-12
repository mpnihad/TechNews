//
//  NewsModel.swift
//  TechNews
//
//  Created by Nihad-Mac on 28/11/22.
//

import Foundation


// MARK: - Welcome5
struct Results : Codable {
    let hits: [Post]
}


struct Post: Codable, Identifiable {
    let title: String
    let url: String?
    let points: Int
    let tags: [String]?
    let objectID: String
    var id: String{
        return objectID
    }
}
