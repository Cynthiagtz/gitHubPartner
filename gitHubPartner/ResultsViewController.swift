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
    
    @IBOutlet weak var informedResult: UILabel!

    @IBOutlet weak var stuggleResult: UILabel!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        if howInformed == "I am very informed"{
            informedResult.text = "Great! In order to prepare for college you should follow the checklist! If you have any more questions feel free to use the external resources linked at our page!"
        } else if howInformed == "I am somewhat informed"{
            informedResult.text = "Awesome, it’s great that you have a head start. A lot of things are important for college. Here’s a brief breakdown. \n GPA: is your grade point average, this score is submitted to colleges and the end of your highschool year. It’s an accumulation of your grades for each year. \n A - 4.0 \n B - 3.0 \n C - 2.0 \n D - 1.0 \n SAT: You’ve probably already known about this exam, what you might’ve not known is that there are no age restrictions to take it! This means you can start studying asap and have as many chances as you want! In more depth, the score is taken as a nation-wide “benchmark” meaning colleges have a score requirement to even apply. But no stress, there are multiple resources to help you out! An alternative to this test is the ACT.\n Extracurriculars: Extracurriculars are really vital when it comes to the college application processes! Colleges like to see that their applicants are well rounded and are adaptable! So try your best to be involved in different activities. This could mean sports, clubs, study groups and any other in/out school interests you have!"

        }

        
        nameLabel.text = "Welcome \(name). Since you are in \(grade)th grade,\(howInformed). You struggle with \(struggle)."
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
