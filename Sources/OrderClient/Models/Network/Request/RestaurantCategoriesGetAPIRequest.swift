//
//  RestaurantCategoriesGetAPIRequest.swift
//  OrderClient
//
//  Created by JeongTaek Han on 2023/05/29.
//

import Foundation

struct RestaurantCategoriesGetAPIRequest: RestaurantAPIRequest {
    
    typealias Response = CategoriesResponse
    
    private var baseCategoryURL: URL? {
        baseURL?.appendingPathComponent("categories")
    }
    
    var urlRequest: URLRequest? {
        guard let baseCategoryURL = baseCategoryURL else {
            return nil
        }
        return URLRequest(url: baseCategoryURL)
    }
    
    func decodeResponse(data: Data) throws -> Response {
        let categories = try JSONDecoder().decode(Response.self, from: data)
        return categories
    }
    
    func verify(response: URLResponse) throws -> Bool {
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw ResponseError.categoriesNotFound
        }
        return true
    }
    
    enum ResponseError: Error, LocalizedError {
        case categoriesNotFound
    }
    
}
