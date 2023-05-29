//
//  RestaurantAPIRequest.swift
//  OrderClient
//
//  Created by JeongTaek Han on 2023/05/29.
//

import Foundation
import NetworkKit

protocol RestaurantAPIRequest: APIRequest {
    
    var baseURL: URL? { get }
    
}

extension RestaurantAPIRequest {
    
    var baseURL: URL? {
        URL(string: "http://localhost:8080")
    }
    
}
