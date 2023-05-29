//
//  Category.swift
//  OrderClient
//
//  Created by JeongTaek Han on 2023/05/29.
//

import Foundation


public struct Category {
    
    public var id: Int
    public var name: String
    
    public init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
    
}

extension Category: Codable {}
