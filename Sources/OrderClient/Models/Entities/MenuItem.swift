//
//  MenuItem.swift
//  OrderClient
//
//  Created by JeongTaek Han on 2023/05/29.
//

import Foundation


public struct MenuItem {
    
    public var id: Int
    public var name: String
    public var detailText: String
    public var price: Double
    public var category: Category
    public var imageURL: URL
    
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
