//
//  Category.swift
//  OrderClient
//
//  Created by JeongTaek Han on 2023/05/29.
//

import Foundation

/// A model representing a category of menu item.
///
/// Category refers to a specific grouping or classification of dishes and items
/// on the menu based on shared characteristics or types of food. It is a way
/// to organize the various offerings into distinct sections or groups, making it
/// easier for customers to navigate and locate specific types of dishes.
public struct Category {
    
    /// The unique number of the category.
    public var id: Int
    
    /// The name of the category.
    public var name: String
    
    /// Creates a category with specified id and name.
    /// - Parameters:
    ///   - id: The unique number of the category.
    ///   - name: The name of the category.
    public init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
    
}

extension Category: Codable {}
