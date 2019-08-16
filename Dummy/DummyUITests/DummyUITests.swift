//
//  DummyUITests.swift
//  DummyUITests
//
//  Created by Pablo Sichert on 16.08.19.
//  Copyright © 2019 Pablo Sichert. All rights reserved.
//

import XCTest

class DummyUITests: XCTestCase {
    var app: XCUIApplication!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app = XCUIApplication()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testDummy() {
        app.launch()

        let input = app.textFields["input"]

        XCTAssert(input.exists)

        input.tap()
        input.typeText("Hello, world!")

        XCTAssertEqual(input.value as! String, "Hello, world!")
    }
}
