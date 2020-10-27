//
//  SampleLabelUITests.swift
//  SampleLabelUITests
//
//  Created by Alexander v. Below on 27.10.20.
//

import XCTest

class SampleLabelUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        let text = app.staticTexts["Label"]

        let appFrame = app.frame
        let textFrame = text.frame

        XCTAssert(textFrame.width <= appFrame.width, "textFrame (\(textFrame.width)) is not smaller or equal to appFrame (\(appFrame.width))")
    }
}
