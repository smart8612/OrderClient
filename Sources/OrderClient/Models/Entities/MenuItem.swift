//
//  MenuItem.swift
//  OrderClient
//
//  Created by JeongTaek Han on 2023/05/29.
//

import Foundation


public struct MenuItem {
    
    var id: Int
    var name: String
    var detailText: String
    var price: Double
    var category: Category
    var imageURL: URL
    
    public init(id: Int, name: String, detailText: String, price: Double, category: Category, imageURL: URL) {
        self.id = id
        self.name = name
        self.detailText = detailText
        self.price = price
        self.category = category
        self.imageURL = imageURL
    }
    
}

extension MenuItem: Codable {
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case detailText = "description"
        case price
        case category
        case imageURL = "image_url"
    }
    
}
