//
//  RestaurantAPIFetchable.swift
//  OrderClient
//
//  Created by JeongTaek Han on 2023/05/29.
//

import Foundation
import NetworkKit

public protocol RestaurantAPIFetchable {
    
    typealias MinutesToPrepare = Int
    
}

public extension RestaurantAPIFetchable {
    
    func submitOrder(forMenuIDs menuIDs: [Int]) async throws -> MinutesToPrepare {
        let apiRequest = RestaurantOrderPostAPIRequest(menuIDs: menuIDs)
        let result = try await NetworkController().send(request: apiRequest)
        return result.preperationTime
    }
    
    func fetchCategories() async throws -> [Category] {
        let apiRequest = RestaurantCategoriesGetAPIRequest()
        let result = try await NetworkController().send(request: apiRequest)
        return result.categories
    }
    
    func fetchMenuItems(forCategory categoryName: String) async throws -> [MenuItem] {
        let apiRequest = RestaurantMenuItemsGetAPIRequest(categoryName: categoryName)
        let result = try await NetworkController().send(request: apiRequest)
        return result.items
    }
    
    func fetchImage(from url: URL) async throws -> Data {
        let apiRequest = ImageGetAPIRequest(path: url.absoluteString)
        let result = try await NetworkController().send(request: apiRequest)
        return result
    }
    
}
