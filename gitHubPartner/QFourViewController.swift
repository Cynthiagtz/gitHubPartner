//
//  QFourViewController.swift
//  gitHubPartner
//
//  Created by Scholar on 6/30/22.
//

import UIKit

class QFourViewController: UIViewController {
    var name = ""
    var grade = 13
    var howInformed = ""
    var struggle = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        if sender.titleLabel!.text == "Time management"{
            struggle = "Time management"
        }
        else if sender.titleLabel!.text == "Note taking"{
            struggle = "Note taking"
        }
        else {
            struggle = "Studying"
        }

    }
    
    @IBAction func resultsTapped(_ sender: UIButton) {
performSegue(withIdentifier: "segueFour", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! ResultsViewController
        destination.name = name
        destination.grade = grade
        destination.howInformed = howInformed
        destination.struggle = struggle
    }

}
