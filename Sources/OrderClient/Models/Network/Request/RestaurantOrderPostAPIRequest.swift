//
//  RestaurantOrderPostAPIRequest.swift
//  OrderClient
//
//  Created by JeongTaek Han on 2023/05/29.
//

import Foundation

struct RestaurantOrderPostAPIRequest: RestaurantAPIRequest {
    
    typealias Response = OrderResponse
    
    let menuIDs: [Int]
    
    private var baseOrderURL: URL? {
        baseURL?.appendingPathComponent("order")
    }
    
    private var encodedMenuIDs: Data? {
        try? JSONEncoder().encode(["menuIds": menuIDs])
    }
    
    var urlRequest: URLRequest? {
        var request = URLRequest.initWithJSONPost(url: baseOrderURL)
        request?.url = baseOrderURL
        request?.httpBody = encodedMenuIDs
        return request
    }
    
    func decodeResponse(data: Data) throws -> Response {
        let order = try JSONDecoder().decode(Response.self, from: data)
        return order
    }
    
    func verify(response: URLResponse) throws -> Bool {
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw ResponseError.orderRequestFailed
        }
        return true
    }
    
    enum ResponseError: Error, LocalizedError {
        case orderRequestFailed
    }
    
}
