//
//  fibTest.swift
//  TestMarch15UITests
//
//  Created by Consultant on 3/15/22.
//

import XCTest

class fibTest: XCTestCase {

    
    
    func testFibSecuence () {
        let expectedReturn = [0,1,1,2,3,5,8]
        var fibonacci = [0,1]
        
        for i in 2...6 {
            fibonacci.append(i)
            fibonacci[i] = fibonacci[i-1] + fibonacci[i-2]
        }
        XCTAssertEqual(expectedReturn, fibonacci)
    }
    

    

}
