import XCTest
@testable import SyntaxParser

final class SyntaxParserTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(SyntaxParser().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
