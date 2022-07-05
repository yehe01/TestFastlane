//
//  Tests_iOSLaunchTests.swift
//  Tests iOS
//
//  Created by Ye He on 5/7/2022.
//

import XCTest

class Tests_iOSLaunchTests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
        
        snapshot("0Launch")
    }
}
