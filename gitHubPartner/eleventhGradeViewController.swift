//
//  eleventhGradeViewController.swift
//  gitHubPartner
//
//  Created by Scholar on 6/30/22.
//

import UIKit

class eleventhGradeViewController: UIViewController {

    @IBOutlet weak var buttonCheckBox: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonCheckBox.setImage(UIImage(named: "pinkCheckmarkEmpty"), for: .normal)
        buttonCheckBox.setImage(UIImage(named: "pinkCheckmark"), for: .selected)
    }
   // self.resizeImage(UIImage(named: "Checkmark")!, targetSize: CGSizeMake(200.0, 200.0))

    override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
    }
        
    @IBAction func checkMarkTapped(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveLinear, animations: {
            sender.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            
            
        }) { (success) in
            UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveLinear, animations: {
                sender.isSelected = !sender.isSelected
                sender.transform = .identity
            }, completion: nil)
            
        }
        
    }
    
}

        

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

