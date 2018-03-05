//
//  ViewControllerUnitTests.swift
//  TDDFizzBuzzTests
//
//  Created by Bharath Kamath on 2018-03-04.
//  Copyright © 2018 Bharath Kamath. All rights reserved.
//

import XCTest
@testable import TDDFizzBuzz

class ViewControllerUnitTests: XCTestCase {
    
    var viewController : ViewController!

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        UIApplication.shared.keyWindow!.rootViewController = viewController
        
        let _ = viewController.view
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testMove1IncrementsScore() {
        viewController.play(move: .number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 1)
    }
    
    func testMove2IncrementsScore() {
        viewController.play(move: .number)
        viewController.play(move: .number)
        
        XCTAssertEqual(viewController.gameScore, 2)
    }
    
    func testHasAGame() {
        XCTAssertNotNil(viewController.game)
    }
    
    func testFizzIncrementScore() {
        viewController.game.score = 2
        viewController.play(move: .fizz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 3)
    }
    
    func testBuzzIncrementScore() {
        viewController.game.score = 4
        viewController.play(move: .buzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 5)
    }
    
    func testFizzBuzzIncrementScore() {
        viewController.game.score = 14
        viewController.play(move: .fizzBuzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 15)
    }
    
    func testIncorrectFizzMove() {
        viewController.game.score = 2
        viewController.play(move:.number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 2)
    }
    
    func testIncorrectBuzzMove() {
        viewController.game.score = 2
        viewController.play(move: .buzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 2)
    }
    
    func testIncorrectFizzBuzzMove() {
        viewController.game.score = 4
        viewController.play(move: .fizzBuzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 4)
    }
}
