//
//  RestaurantAPIFetchable.swift
//  OrderClient
//
//  Created by JeongTaek Han on 2023/05/29.
//

import Foundation
import NetworkKit

/// A type that process a request to the restaurant api.
public protocol RestaurantAPIFetchable {
    
    /// A type that refers the time taken to process an order.
    typealias MinutesToPrepare = Int
    
}

public extension RestaurantAPIFetchable {
    
    /// Submits an order to the restaurant server.
    /// - Parameter menuIDs: The unique integer of menu items which refers the identity.
    /// - Returns: The number of the time taken to process an order.
    func submitOrder(forMenuIDs menuIDs: [Int]) async throws -> MinutesToPrepare {
        let apiRequest = RestaurantOrderPostAPIRequest(menuIDs: menuIDs)
        let result = try await NetworkController().send(request: apiRequest)
        return result.preperationTime
    }
    
    /// Fetches the categories from the restaurant server.
    /// - Returns: The list of categories.
    func fetchCategories() async throws -> [Category] {
        let apiRequest = RestaurantCategoriesGetAPIRequest()
        let result = try await NetworkController().send(request: apiRequest)
        return result.categories
    }
    
    /// Fetches the menu items from the restaurant server.
    /// - Parameter categoryName: The name of category which will be used to find matched menu items.
    /// - Returns: The list of menu items.
    func fetchMenuItems(forCategory categoryName: String) async throws -> [MenuItem] {
        let apiRequest = RestaurantMenuItemsGetAPIRequest(categoryName: categoryName)
        let result = try await NetworkController().send(request: apiRequest)
        return result.items
    }
    
    /// Fetches the image data from the restaurant server.
    /// - Parameter url: The url of server where image is saved.
    /// - Returns: The data of the requested image.
    func fetchImage(from url: URL) async throws -> Data {
        let apiRequest = ImageGetAPIRequest(path: url.absoluteString)
        let result = try await NetworkController().send(request: apiRequest)
        return result
    }
    
}
