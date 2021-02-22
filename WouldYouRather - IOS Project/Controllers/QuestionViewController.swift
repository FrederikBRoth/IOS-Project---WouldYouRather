//
//  QuestionViewController.swift
//  WouldYouRather - IOS Project
//
//  Created by user186455 on 2/21/21.
//

import UIKit

class QuestionViewController: UIViewController {
    private var databaseConnecter: DatabaseConnection!
    private var questionHandler: QuestionHandler!
    private var answer: String?
    private var question: Question?
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answer1Label: UILabel!
    @IBOutlet weak var answer2Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        databaseConnecter = DatabaseConnection()
        databaseConnecter.connect()
        sleep(1)
        print(databaseConnecter.questions)
        questionHandler = QuestionHandler(databaseConnecter.questions)
        question = questionHandler.getRandomQuestion()
        questionLabel.text = question?.question
        answer1Label.text = question?.answer1
        answer2Label.text = question?.answer2
        
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var questionView: QuestionView! {
        didSet{
            let swipe = UISwipeGestureRecognizer(target: self, action: #selector(test))
            swipe.direction = .right
            questionView.addGestureRecognizer(swipe)
            let swipe2 = UISwipeGestureRecognizer(target: self, action: #selector(test2))
            swipe.direction = .left
            questionView.addGestureRecognizer(swipe2)
        }
    }
    @objc func test(){
        answer = question?.answer2
        performSegue(withIdentifier: "submitAnswer", sender: self)
    }
    @objc func test2(){
        answer = question?.answer1
        performSegue(withIdentifier: "submitAnswer", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? SubmittedAnswerViewController {
            vc.answer = answer
            vc.question = question?.question
            
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

}
