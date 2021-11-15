//
//  LoginViewControllerTests.swift
//  LoginAppTests
//
//  Created by MAC on 15/11/21.
//

import XCTest
@testable import LoginApp

class LoginViewControllerTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
    func testLoginValidation_incorrectCredentials() {
        
        // Given
        let loginViewController = LoginVeiwController()
        let userName = "abc"
        let password = "xyz"
        
        
        // when
        
        let expectedOutput = false
        let acutalOutput = loginViewController.loginValidation(userName:userName, password: password)
        
        // then
        
        XCTAssertEqual(expectedOutput, acutalOutput)
    }

    
    func testLoginValidation_correctCredentials() {
        
        // Given
        let loginViewController = LoginVeiwController()
        let userName = "rbs"
        let password = "123456"
        
        
        // when
        let expectedOutput = true
        let acutalOutput = loginViewController.loginValidation(userName:userName, password: password)
        
        // then
        
        XCTAssertEqual(expectedOutput, acutalOutput)
    }

    func testLoginValidation_correctUserName_woringPassword() {
        
        // Given
        let loginViewController = LoginVeiwController()
        let userName = "rbs"
        let password = "123456asd"
        
        
        // when
        let expectedOutput = false
        let acutalOutput = loginViewController.loginValidation(userName:userName, password: password)
        
        // then
        
        XCTAssertEqual(expectedOutput, acutalOutput)
    }


}
