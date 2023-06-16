//
//  MenuItem.swift
//  OrderClient
//
//  Created by JeongTaek Han on 2023/05/29.
//

import Foundation

/// A model representing a menu item.
///
/// Menu item refers to a list of food options available for customers to order.
/// It serves as a comprehensive guide for customers to make informed choices
/// about the dishes and drinks they would like to enjoy during their dining
/// experience.
public struct MenuItem {
    
    /// The unique number of the menu item.
    public var id: Int
    
    /// The name of the menu item.
    public var name: String
    
    /// The detail description of the menu item.
    public var detailText: String
    
    /// The sales price of the menu item.
    public var price: Double
    
    /// The category type of the menu item.
    public var category: Category
    
    /// The image link of the menu item.
    public var imageURL: URL
    
    /// Creates menu item with specified food information.
    /// - Parameters:
    ///   - id: The unique number of the menu item.
    ///   - name: The name of the menu item.
    ///   - detailText: The detail description of the menu item.
    ///   - price: The sales price of the menu item.
    ///   - category: The category type of the menu item.
    ///   - imageURL: The image link of the menu item.
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
