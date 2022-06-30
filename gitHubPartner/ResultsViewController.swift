//
//  ResultsViewController.swift
//  gitHubPartner
//
//  Created by Scholar on 6/30/22.
//

import UIKit

class ResultsViewController: UIViewController {

    var name = ""
    var grade = 13
    var howInformed = ""
    var struggle = ""
    
    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = "Welcome \(name). You are in \(grade), and you are this level of informed: \(howInformed). You struggle with \(struggle)."
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
