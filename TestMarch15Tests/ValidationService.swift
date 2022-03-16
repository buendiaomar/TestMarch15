//
//  ValidationService.swift
//  TestMarch15UITests
//
//  Created by Consultant on 3/15/22.
//

import XCTest

@testable import TestMarch15
class ValidationServiceTests: XCTestCase {
    
    var validation: ValidationService!
    
    override func setUp() {
        super.setUp()
        validation = ValidationService()
    }
    
    override func tearDown() {
        super.tearDown()
        validation = nil
    }
    
    func testUsernameNil() throws {
        let expectedError = ValidationError.invalidEntry
        var error: ValidationError?
        XCTAssertThrowsError(try validation.validateUserName(nil)) {
            thrownError in
            error = thrownError as? ValidationError
        }
        XCTAssertEqual(expectedError, error)
    }
    
    func isValidUsername() throws {
        XCTAssertNoThrow(try validation.validateUserName("admin"))
    }
    
    func isUsernameShort() throws {
        let expectedError = ValidationError.usernameTooShort
        var error: ValidationError?
        
        XCTAssertThrowsError(try validation.validateUserName("xf")) {
            thrownError in
            error = thrownError as? ValidationError
        }
        XCTAssertEqual(expectedError, error)
    }
    
    func isUsernameLong() throws {
        let expectedError = ValidationError.usernameTooLong
        var error: ValidationError?
        let username = "ReallyLongUserName123"
        
        XCTAssertThrowsError(try validation.validateUserName(username)) {
            thrownError in
            error = thrownError as? ValidationError
        }
        XCTAssertEqual(expectedError, error)
    }
    
    //MARK: - Homework
    
    func isUsernameZero() throws {
        let expectedError = ValidationError.usernameTooShort
        var error: ValidationError?
        
        XCTAssertThrowsError(try validation.validateUserName("0")) {
            thrownError in
            error = thrownError as? ValidationError
        }
        XCTAssertEqual(expectedError, error)
    }
    
    func isUsernameEmpty() throws {
        let expectedError = ValidationError.usernameTooShort
        var error: ValidationError?
        
        XCTAssertThrowsError(try validation.validateUserName("")) {
            thrownError in
            error = thrownError as? ValidationError
        }
        XCTAssertEqual(expectedError, error)
    }

//    func isUserInputZero() throws {
//        let expectedError = ValidationError.zeroUserImput
//        var error: ValidationError?
//        
//        XCTAssertThrowsError(try validation.validateUserInput(0)) {
//            thrownError in
//            error = thrownError as? ValidationError
//        }
//        XCTAssertEqual(expectedError, error)
//    }
    
    
   
    
    
    
}
