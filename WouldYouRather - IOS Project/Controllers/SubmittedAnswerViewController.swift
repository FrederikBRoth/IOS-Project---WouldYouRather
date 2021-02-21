//
//  SubmittedAnswerViewController.swift
//  WouldYouRather - IOS Project
//
//  Created by user186455 on 2/21/21.
//

import UIKit

class SubmittedAnswerViewController: UIViewController {

    var answer: String!
    
    @IBOutlet weak var answerLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        answerLable.text = answer
        // Do any additional setup after loading the view.
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
