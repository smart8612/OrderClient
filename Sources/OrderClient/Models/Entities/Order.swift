//
//  Order.swift
//  OrderClient
//
//  Created by JeongTaek Han on 2023/05/29.
//

import Foundation

/// A model representing a order.
///
/// Order is a customer's specific request for ``MenuItem``'s.
/// When a customer decides what they would like to eat, they place
/// an order with ``MenuItem``.
public struct Order {
    
    /// The menu items of the order.
    ///
    /// A menu items maintains the list of foods which consumer requested.
    public var menuItems: [MenuItem]
    
    /// Creates an order with the specified menu items.
    /// - Parameter menuItems: The menu item list of the order
    public init(menuItems: [MenuItem] = []) {
        self.menuItems = menuItems
    }
    
}

extension Order: Codable {}
