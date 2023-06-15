//
//  RestaurantAPIRequest.swift
//  OrderClient
//
//  Created by JeongTaek Han on 2023/05/29.
//

import Foundation
import NetworkKit

/// A type that declares an api request which can be processed by
/// network controller's operation for binding with restaurant server.
protocol RestaurantAPIRequest: APIRequest {
    
    /// The url of the restaurant api server.
    var baseURL: URL? { get }
    
}

extension RestaurantAPIRequest {
    
    var baseURL: URL? {
        URL(string: "http://localhost:8080")
    }
    
}
