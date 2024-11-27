//
//  ResultViewController.swift
//  Rock Paper Scissors
//
//  Created by fsjguest on 2024-11-26.
//

import UIKit

class ResultViewController: UIViewController {

    var playerChoice: Int? // Player's choice passed from the first view controller
    var computerChoice: Int? // Randomly generated computer choice
    
    @IBOutlet weak var playerImageView: UIImageView!
    @IBOutlet weak var computerImageView: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Generate the computer's random choice
        computerChoice = Int.random(in: 0...2)

        // Update the UI with the player's and computer's choices
        updateChoices()
        
        // Determine and display the result
        determineResult()
    }

    func updateChoices() {
        guard let playerChoice = playerChoice, let computerChoice = computerChoice else { return }
        
        let images = [
            UIImage(named: "rock"),
            UIImage(named: "paper"),
            UIImage(named: "scissors")
        ]

        // Set the images for the player and computer
        playerImageView.image = images[playerChoice]
        computerImageView.image = images[computerChoice]
    }

    func determineResult() {
        guard let playerChoice = playerChoice, let computerChoice = computerChoice else { return }

        // Determine the result
        if playerChoice == computerChoice {
            resultLabel.text = "It's a Draw!"
        } else if (playerChoice == 0 && computerChoice == 2) || // Rock beats Scissors
                  (playerChoice == 1 && computerChoice == 0) || // Paper beats Rock
                  (playerChoice == 2 && computerChoice == 1) {  // Scissors beats Paper
            resultLabel.text = "You Win!"
        } else {
            resultLabel.text = "You Lose!"
        }
    }
}
