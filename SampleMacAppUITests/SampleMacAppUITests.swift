//
//  SampleMacAppUITests.swift
//  SampleMacAppUITests
//
//  Created by Micheal Vijayaraj R on 21/07/16.
//  Copyright © 2016 Micheal Vijayaraj R. All rights reserved.
//

import XCTest

class SampleMacAppUITests: XCTestCase, XCTestObservation {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample1() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        let window = app.windows["Window"]
        let nameTextField = window.textFields["name"]
        nameTextField.typeText("micheal")
        
        window.buttons["Button"].click()
        
        
        let alertDialog = app.dialogs["alert"]
        let name = alertDialog.staticTexts.element(boundBy: 0)
        
       XCTAssertEqual(name.value as! String!, "Hi micheal", "Message is not Hi micheal")
        
    }
    
    func testExample2() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
    }
    
    func testExample3() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
    }
    
    func testExample4() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
    }
    
    func testExample5() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
    }

    func testExample6() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
    }

    func testExample7() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
    }

    /*func testExample8() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
    }*/

   /* func testExample9() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
    }*/
    
    
    /*func testCrash() {
        XCUIApplication().windows["Window"].buttons["Crash"].click()
        
    }*/
    
    func testBundleWillStart(_ testBundle: Bundle) {
        print("testBundleWillStart")
        print(testBundle)
        
    }
    func testBundleDidFinish(_ testBundle: Bundle) {
        print("testBundleDidFinish")
        print(testBundle)
    }

    func testSuiteWillStart(_ testSuite: XCTestSuite) {
        print("testSuiteWillStart")
        print(testSuite)

    }
    
    func testSuite(_ testSuite: XCTestSuite, didFailWithDescription description: String, inFile filePath: String?, atLine lineNumber: UInt) {
        print("testSuite didFailWithDescription")
        print(testSuite)
        print(description)

    }

    func testSuiteDidFinish(_ testSuite: XCTestSuite) {
        print("testSuiteDidFinish")
        print(testSuite)
    }
    
    func testCaseWillStart(_ testCase: XCTestCase) {
        print("testCaseWillStart")
        print(testCase)

    }

    func testCase(_ testCase: XCTestCase, didFailWithDescription description: String, inFile filePath: String?, atLine lineNumber: UInt) {
        print("testCase didFailWithDescription")
        print(testCase)
        print(description)
    }

    func testCaseDidFinish(_ testCase: XCTestCase) {
        print("testCaseDidFinish")
        print(testCase)
    }

    
}
