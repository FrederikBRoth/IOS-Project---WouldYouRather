//
//  QuestionViewController.swift
//  WouldYouRather - IOS Project
//
//  Created by user186455 on 2/21/21.
//

import UIKit

class QuestionViewController: UIViewController {

    private var answer: String?
    override func viewDidLoad() {
        super.viewDidLoad()

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
        answer = "right"
        performSegue(withIdentifier: "submitAnswer", sender: self)
    }
    @objc func test2(){
        answer = "left"
        performSegue(withIdentifier: "submitAnswer", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? SubmittedAnswerViewController {
            vc.answer = answer
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
