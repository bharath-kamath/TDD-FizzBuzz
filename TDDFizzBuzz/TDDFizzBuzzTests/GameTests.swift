//
//  GameTests.swift
//  TDDFizzBuzzTests
//
//  Created by Bharath Kamath on 2018-03-03.
//  Copyright © 2018 Bharath Kamath. All rights reserved.
//

import XCTest
@testable import TDDFizzBuzz

class GameTests: XCTestCase {
    
    let game = Game()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {

        super.tearDown()
    }
    
    func testNewGameSettings() {
        
        game.setupNewGame()
        XCTAssertTrue(game.score == 0)
    }
    
    
    func testScoreIncrementOnPlay() {
        let score = game.score
        _ = game.play(move: .number)
        XCTAssertTrue(game.score == score+1)
    }
    
    
    func testIfFizzMoveIsRight() {
        game.score = 2
        let response = game.play(move: .fizz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfFizzMoveIsFalse() {
        game.score = 1
        let response = game.play(move: .fizz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfBuzzMoveIsRight() {
        game.score = 4
        let response = game.play(move: .buzz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfBuzzMoveIsFalse() {
        game.score = 1
        let response = game.play(move: .buzz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfFizzBuzzMoveIsRight() {
        game.score = 14
        let response = game.play(move: .fizzBuzz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfFizzBuzzMoveIsFalse() {
        game.score = 1
        let response = game.play(move: .fizzBuzz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfNumberMoveIsRight() {
        game.score = 1
        let response = game.play(move: .number)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfNumberMoveIsFalse() {
        game.score = 2
        let response = game.play(move: .number)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testScoreNotIncrementForWrongMove() {
        game.score = 2
        let response = game.play(move: .number)
        let result = response.right
        XCTAssertEqual(result, false)
        XCTAssertEqual(game.score, 2, "On wrong Move, score should not increase")
    }
    
    func testPlayShouldReturnIfMoveRight() {
        let response = game.play(move: .number)
        XCTAssertNotNil(response.right)
    }
    
    func testPlayShouldReturnNewScore() {
        let response = game.play(move: .number)
        XCTAssertNotNil(response.score)
    }
}
