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
            informedResult.text = "Awesome, it’s great that you have a head start. A lot of things are important for college. Here’s a brief breakdown. \n GPA: is your grade point average, this score is submitted to colleges and the end of your highschool year. It’s an accumulation of your grades for each year. \n A - 4.0 \n B - 3.0 \n C - 2.0 \n D - 1.0 \n\n SAT: You’ve probably already known about this exam, what you might’ve not known is that there are no age restrictions to take it! This means you can start studying asap and have as many chances as you want! In more depth, the score is taken as a nation-wide “benchmark” meaning colleges have a score requirement to even apply. But no stress, there are multiple resources to help you out! An alternative to this test is the ACT.\n Extracurriculars: Extracurriculars are really vital when it comes to the college application processes! Colleges like to see that their applicants are well rounded and are adaptable! So try your best to be involved in different activities. This could mean sports, clubs, study groups and any other in/out school interests you have!"

        } else if howInformed == "I am not informed at all"{
            informedResult.text = "Hey, no worries! Many people don’t feel confident in the application and admission process of college yet! Anyway, let's just explain the basics. \n First off, GPA. What is GPA, it stands for grade point average! It’s basically the addition of all your grades. It’s on a 4.0 scale meaning that 4.0 is the best you can get. Take a look at the scale and I'm sure it would all make sense. \n A - 4.0 \n B - 3.0 \n C - 2.0 \n D - 1.0 \n In more detail, as time goes on your GPA changes. For example if you get all A’s at the end of 9th grade. Then, get all B’s in your 10th grade year. Your overall GPA would be 3.5. \n SAT: This is a standard test that everyone should take before college! Its score ranges from 400 - 1600. With a 1600 being the absolute best, this test can be overwhelming but it’s a necessary part of your highschool career. College Board, the franchise that hosts the test, has a lot of information and resources regarding the SAT. So don’t be scared to check it out! \n Extracurriculars: Extracurriculars are really vital when it comes to the college application processes! Colleges like to see that their applicants are well rounded and are adaptable! So try your best to be involved in different activities. This could mean sports, clubs, study groups and any other in/out school interests you have!"
        }
        
        
        
        
        if struggle == "Time management"{
            stuggleResult.text = "Well, being a procrastinator is something that's definitely stressful. But, on the plus side there are so many cool methods to be productive! Here are some examples… \n Pomodoro technique - this technique is great for maximizing your productivity while still giving yourself breaks: \n Choose one task to work on (essay, math revisions, history poster) \n Then set a 25 minute timer, and continue to start on your project\n Then when the timer rings, give yourself a 5 minute break (bathroom, snack, quick walk around) \n Then come back to work and set another timer, do this 4 times and then give yourself a 20 minute break! \n Eisenhower Technique - this helps when you have lots of work to do and you're trying to prioritize. This uses a matrix in order to see what tasks need to be done and what tasks can wait. There are 4 main categories (Important, Urgent, Not important, and Not urgent). Ask yourself if the test is important, or urgent then decide where to place it. Use the image below to guide yourself."
       
        
        }else if struggle == "Note taking"{
            stuggleResult.text = "One of the best ways to learn is notes, but using them the right way is what matters. Here are some effective strategies \n Cornell Notes: The title goes at the top of your page, in the left column main ideas, diagrams, questions and prompts. One the right side (the majority of the page), lecture notes and concise sentences are located. Lastly, at the bottom of the page a short summary of the lesson. \n Outline Notes: In this type of notes the sections are separated by bullet points. The first bullet point should be the main topic of your notes. Then the second should be indented, and have the subtopic. Lastly, the last is indented further and would have a fact to support the previous statements. You keep repeating, until you have all your information written out."
            
        } else {
            stuggleResult.text = "/n The SQ3R method (this is for textbooks, and studying long texts or notes), which stands for: /n     Survey- Scanning the chapter, reading any titles/subtitles, looking at graphics, reading the chapter summary, and seeing if there are any study guide questions asked  /n     Question- Write down any questions you have on the project and identify what you want to understand from the reading  /n     Read- Read the text in sections, breaking down the piece by subtitles making sure to question what the text is really saying  /n     Recite- In your own words paraphrase the content of what you just read making sure that you retain the information you wanted to, by using the question you wrote down. /n     Review: Re-read the text for clarification if you’re confused or to better retain the information /n The Feynman Technique - this technique is super simple and is great to remember information /n     Write your topic or subject down on a piece of paper then create question branching from that topic /n     After that do your best to explain them thoroughly /n     When your done, double check that you were right and then fix any errors /n The mind mapping technique - this is great for visual learners and to see everything displayed on one piece of paper. This is a simple thing to do and can be done in many ways. For one, you can write out your main study topic in the center of your paper then, create main branches like chapter titles or unit names. After that, you can continue to break it down into subcategories. Listing or drawing information out to help explain the topics!"

        }
        
        nameLabel.text = "Welcome \(name)! Here is your personalized list of helpful tips!"

    }


    @IBAction func viewChecklist(_ sender: UIButton) {
        if grade == 9 {
            performSegue(withIdentifier: "Freshman", sender: self)
        }else if grade == 10 {
            performSegue(withIdentifier: "Sophmore", sender: self)
        }else if grade == 11 {
            performSegue(withIdentifier: "Junior", sender: self)
        }else {
            performSegue(withIdentifier: "Senior", sender: self)
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


