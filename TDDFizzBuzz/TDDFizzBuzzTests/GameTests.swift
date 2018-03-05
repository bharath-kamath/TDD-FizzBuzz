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
        _ = game.play(move: "1")
        XCTAssertTrue(game.score == score+1)
    }
    
    
    func testIfFizzMoveIsRight() {
        game.score = 2
        let result = game.play(move: "Fizz")
        XCTAssertEqual(result, true)
    }
    
    func testIfFizzMoveIsFalse() {
        game.score = 1
        let result = game.play(move: "Fizz")
        XCTAssertEqual(result, false)
    }
    
    func testIfBuzzMoveIsRight() {
        game.score = 4
        let result = game.play(move: "Buzz")
        XCTAssertEqual(result, true)
    }
    
    func testIfBuzzMoveIsFalse() {
        game.score = 1
        let result = game.play(move: "Buzz")
        XCTAssertEqual(result, false)
    }
    
    func testIfFizzBuzzMoveIsRight() {
        game.score = 14
        let result = game.play(move: "FizzBuzz")
        XCTAssertEqual(result, true)
    }
    
    func testIfFizzBuzzMoveIsFalse() {
        game.score = 1
        let result = game.play(move: "FizzBuzz")
        XCTAssertEqual(result, false)
    }
    
    func testIfNumberMoveIsRight() {
        game.score = 1
        let result = game.play(move: "2")
        XCTAssertEqual(result, true)
    }
    
    func testIfNumberMoveIsFalse() {
        game.score = 1
        let result = game.play(move: "1")
        XCTAssertEqual(result, false)
    }
    
    func testScoreNotIncrementForWrongMove() {
        let result = game.play(move: "2")
        XCTAssertEqual(result, false)
        XCTAssertEqual(game.score, 0, "On wrong Move, score should not increase")
    }
}
