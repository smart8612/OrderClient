//
//  MenuResponse.swift
//  OrderClient
//
//  Created by JeongTaek Han on 2023/05/29.
//

import Foundation

/// A type that is used to decode json object
/// which is returned by restaurant server.
struct MenuResponse: Codable {
    
    let items: [MenuItem]
    
}
