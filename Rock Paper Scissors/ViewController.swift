//
//  ViewController.swift
//  Rock Paper Scissors
//
//  Created by fsjguest on 2024-11-21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func gotoHelp(_ sender: UIButton) {
        performSegue(withIdentifier: "goToHelp", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToHelp" {
            if let destinationVC = segue.destination as? SecondViewController {
                destinationVC.modalPresentationStyle = .fullScreen
            }
        }
    }
    
    
    
}

