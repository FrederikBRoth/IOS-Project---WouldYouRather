//
//  SubmittedAnswerViewController.swift
//  WouldYouRather - IOS Project
//
//  Created by user186455 on 2/21/21.
//

import UIKit

class SubmittedAnswerViewController: UIViewController {
    var defaults = UserDefaults.standard
    var answer: String!
    var question: String!
    
    @IBOutlet weak var answerLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        answerLable.text = answer
        if let data = defaults.object(forKey: "statistics") as? Data {
            let decoder = JSONDecoder()
            if var dataArray = try? decoder.decode([Statistic].self, from: data){
                dataArray.append(Statistic(question: question, answer: answer))
                let encoder = JSONEncoder()
                if let encoded = try? encoder.encode(dataArray) {
                    defaults.set(encoded, forKey: "statistics")
                    UserDefaults.standard.synchronize()
                }
            }
        }
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
