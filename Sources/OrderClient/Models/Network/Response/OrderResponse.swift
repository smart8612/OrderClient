//
//  OrderResponse.swift
//  OrderClient
//
//  Created by JeongTaek Han on 2023/05/29.
//

import Foundation

struct OrderResponse {
    
    let preperationTime: Int
    
}

extension OrderResponse: Codable {
    
    enum CodingKeys: String, CodingKey {
        case preperationTime = "preparation_time"
    }
    
}
