import XCTest
@testable import OrderClient

final class OrderClientTests: XCTestCase {
    
    private var orderClient: OrderClient!
    
    override func setUpWithError() throws {
        self.orderClient = OrderClient()
    }

    override func tearDownWithError() throws {
        self.orderClient = nil
    }
    
    func test_id_is_5_submitOrder_return_int() async throws {
        let result = try await orderClient.submitOrder(forMenuIDs: [5])
        XCTAssertEqual(result, 6)
    }

    func test_fetchCategories_return_string_array_with_contents() async throws {
        let result = try await orderClient.fetchCategories()
        XCTAssertFalse(result.isEmpty)
    }
    
    func test_appetizers_fetchMenuItems_return_menuItem_array_with_contents() async throws {
        let result = try await orderClient.fetchMenuItems(forCategory: "appetizers")
        XCTAssertFalse(result.isEmpty)
    }
    
    func test_salads_fetchMenuItems_return_menuItem_array_with_contents() async throws {
        let result = try await orderClient.fetchMenuItems(forCategory: "salads")
        XCTAssertFalse(result.isEmpty)
    }
    
    func test_soups_fetchMenuItems_return_menuItem_array_with_contents() async throws {
        let result = try await orderClient.fetchMenuItems(forCategory: "soups")
        XCTAssertFalse(result.isEmpty)
    }
    
    func test_sandwiches_fetchMenuItems_return_menuItem_array_with_contents() async throws {
        let result = try await orderClient.fetchMenuItems(forCategory: "sandwiches")
        XCTAssertTrue(result.isEmpty)
    }
    
    func test_entrees_fetchMenuItems_return_menuItem_array_with_contents() async throws {
        let result = try await orderClient.fetchMenuItems(forCategory: "entrees")
        XCTAssertFalse(result.isEmpty)
    }
    
    func test_desserts_fetchMenuItems_return_menuItem_array_with_contents() async throws {
        let result = try await orderClient.fetchMenuItems(forCategory: "desserts")
        XCTAssertTrue(result.isEmpty)
    }
    
}
