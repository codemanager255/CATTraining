//
//  CaculatorTests.swift
//  LoginAppTests
//
//  Created by MAC on 15/11/21.
//

import XCTest
@testable import LoginApp

class CaculatorTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
    func testAdd() {
        
        // GIVEN
        let c1 = Calculator()
        let a = 5
        let b = 10
        
        
        // THEN
        let expectedOutput = 15
        let acutualOutput =  c1.add(a: a, b: b)
        
        
        // WHEN

        XCTAssertEqual(expectedOutput, acutualOutput)
    }
   

}
