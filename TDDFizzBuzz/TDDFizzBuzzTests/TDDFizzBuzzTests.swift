//
//  TDDFizzBuzzTests.swift
//  TDDFizzBuzzTests
//
//  Created by Bharath Kamath on 2018-03-01.
//  Copyright © 2018 Bharath Kamath. All rights reserved.
//

import XCTest
@testable import TDDFizzBuzz

class TDDFizzBuzzTests: XCTestCase {
    
    let brain = Brain()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testIsDivisibleByThree() {
        let result = brain.isDivisibleByThree(number: 3)
        XCTAssertTrue(result, "Number Divisible by Three check failed")
    }
    
    func testIsNotDivisibleByThree() {
        let result = brain.isDivisibleByThree(number: 1)
        XCTAssertFalse(result, "Number not divisible by three check failed")
    }
    
    func testIsDivisibleByFive() {
        
        let result = brain.isDivisibleByFive(number: 5)
        XCTAssertTrue(result, "Number divisible by five check failed")
        
        let result2 = brain.isDivisibleByFive(number: 4)
        XCTAssertFalse(result2, "Number not divisible by five check failed")
    }
    
    func testIsDivisibleByFifteen() {
        
        let result = brain.isDivisibleByFifteen(number: 45)
        XCTAssertTrue(result, "Number divisible by fifteen check failed")
        
        let result2 = brain.isDivisibleByFifteen(number: 40)
        XCTAssertFalse(result2, "Number not divisible by fifteen check failed")
    }
    
    func testSayFizz() {
        let result = brain.check(number: 3)
        XCTAssertEqual(result, .fizz)
    }
    
    func testSayBuzz() {
        let result = brain.check(number: 5)
        XCTAssertEqual(result, .buzz)
    }
    
    func testSayFizzBuzz() {
        let result = brain.check(number: 15)
        XCTAssertEqual(result, .fizzBuzz)
    }
    
    func testSayNumber() {
        let result = brain.check(number: 1)
        XCTAssertEqual(result, .number)
    }
}
