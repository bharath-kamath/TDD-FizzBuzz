//
//  Brain.swift
//  TDDFizzBuzz
//
//  Created by Bharath Kamath on 2018-03-01.
//  Copyright © 2018 Bharath Kamath. All rights reserved.
//

import Foundation


class Brain {
    
    func isDivisibleByThree(number: Int) -> Bool {
        return isDivisbleBy(number: number, divisor: 3)
    }
    
    func isDivisibleByFive(number: Int) -> Bool {
        return isDivisbleBy(number: number, divisor: 5)
    }
    
    func isDivisibleByFifteen(number: Int) -> Bool {
        return isDivisbleBy(number: number, divisor: 15)
    }
    
    func isDivisbleBy(number: Int, divisor: Int) -> Bool {
        return (number % divisor == 0) ? true : false
    }
    
    func check(number: Int) -> String {
        if isDivisibleByFifteen(number: number) {
            return "FizzBuzz"
        }
        else if isDivisibleByFive(number: number) {
            return "Buzz"
        }
        else if isDivisibleByThree(number: number) {
            return "Fizz"
        }
        return "\(number)"
    }
}
