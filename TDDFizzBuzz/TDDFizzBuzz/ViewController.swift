//
//  ViewController.swift
//  TDDFizzBuzz
//
//  Created by Bharath Kamath on 2018-03-01.
//  Copyright © 2018 Bharath Kamath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var gameScore: Int? {
        
        didSet {
            guard let unwrappedScore = gameScore else {
                print("gameScore is nil")
                return
            }
            numberButton.setTitle("\(unwrappedScore)", for: .normal)
        }
    }
    
    let game = Game()
    
    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzBuzzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gameScore = game.score
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func play(move: Move) {

        let resposne = game.play(move: move)
        gameScore = resposne.score
        
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        switch sender {
        case numberButton:
            play(move: .number)
            break
        case fizzButton:
            play(move: .fizz)
            break
        case buzzButton:
            play(move: .buzz)
            break
        case fizzBuzzButton:
            play(move: .fizzBuzz)
            break
        default:
            break
        }
    }
}

