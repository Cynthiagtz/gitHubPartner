//
//  QOneViewController.swift
//  gitHubPartner
//
//  Created by Scholar on 6/30/22.
//

import UIKit

class QOneViewController: UIViewController {

    var name = ""
    
    @IBOutlet weak var nameField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        if let input = nameField.text {
        name = input
        }
        performSegue(withIdentifier: "segueOne", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! QTwoViewController
        destination.name = name
    }

}
