//
//  Order.swift
//  OrderClient
//
//  Created by JeongTaek Han on 2023/05/29.
//

import Foundation

public struct Order {
    
    public var menuItems: [MenuItem]
    
    public init(menuItems: [MenuItem] = []) {
        self.menuItems = menuItems
    }
    
}

extension Order: Codable {}
