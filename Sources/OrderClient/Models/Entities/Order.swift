//
//  Order.swift
//  OrderClient
//
//  Created by JeongTaek Han on 2023/05/29.
//

import Foundation


struct Order {
    
    var menuItems: [MenuItem]
    
}

extension Order: Codable {}