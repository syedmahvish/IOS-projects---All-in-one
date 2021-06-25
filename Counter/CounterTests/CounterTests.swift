//
//  CounterTests.swift
//  CounterTests
//
//  Created by Mahvish Syed on 25/06/21.
//  Copyright © 2021 Mahvish Syed. All rights reserved.
//

import XCTest
@testable import Counter

class CounterTests: XCTestCase {

    var vcTest : ViewController!
    
    
    override func setUp() {
        try super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        vcTest = storyboard.instantiateViewController(withIdentifier: String(describing: ViewController.self)) as! ViewController
        vcTest.loadViewIfNeeded()
    }

    override func tearDown() {
        vcTest = nil
        try super.tearDown()
    }

    func testExample() {
       testresetButtonTap()
       testincrementCounter()
    }
    
    func testresetButtonTap() {
        var barbutton = UIBarButtonItem()
        vcTest.resetButtonTap(barbutton)
        if let label  = vcTest.counterLabel,
            let text = label.text{
            XCTAssertEqual(text, "0")
        }
    }
    
    func testincrementCounter(){
        var button = UIButton()
        vcTest.counterLabel.text = "1"
        vcTest.incrementCounter(button)
        if let label  = vcTest.counterLabel,
            let text = label.text{
            XCTAssertEqual(text, "2")
        }
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
