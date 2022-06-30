//
//  QTwoViewController.swift
//  gitHubPartner
//
//  Created by Scholar on 6/30/22.
//

import UIKit

class QTwoViewController: UIViewController {
    
    var name = ""
    var grade = 13

    override func viewDidLoad() {
        super.viewDidLoad()
        print(name)
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        if sender.titleLabel!.text == "9th"{
            grade = 9
        }
        else if sender.titleLabel!.text == "10th"{
            grade = 10
        }
        else if sender.titleLabel!.text == "11th"{
            grade = 11
        }
        else {
            grade = 12
        }
    }
    
    @IBAction func nextTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "segueTwo", sender: self)
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! QThreeViewController
        destination.name = name
        destination.grade = grade
    }
    
    

}
