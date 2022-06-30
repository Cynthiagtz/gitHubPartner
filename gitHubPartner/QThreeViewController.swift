//
//  QThreeViewController.swift
//  gitHubPartner
//
//  Created by Scholar on 6/30/22.
//

import UIKit

class QThreeViewController: UIViewController {
    var name = ""
    var grade = 13
    var howInformed = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        if sender.titleLabel!.text == "I am very informed"{
            howInformed = "I am very informed"
        }
        else if sender.titleLabel!.text == "I am somewhat informed"{
            howInformed = "I am somewhat informed"
        }
        else {
            howInformed = "Not informed at all"
        }

    }
    
    @IBAction func nextTapped(_ sender: Any) {
        performSegue(withIdentifier: "segueThree", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! QFourViewController
        destination.name = name
        destination.grade = grade
        destination.howInformed = howInformed
    }
    
}
