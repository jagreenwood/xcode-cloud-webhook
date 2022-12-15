import XCTest
@testable import XcodeCloudWebhook

final class XcodeCloudWebhookTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(xcode_cloud_webhook().text, "Hello, World!")
    }
}
