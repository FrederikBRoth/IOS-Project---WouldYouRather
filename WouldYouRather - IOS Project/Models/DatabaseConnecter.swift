//
//  DatabaseConnecter.swift
//  WouldYouRather - IOS Project
//
//  Created by user186455 on 2/22/21.
//

import Foundation

class DatabaseConnection {
    var questions = [Question]()
    func connect() {
        let url = URL(string: "http://217.61.221.190:5000/getquestions")!
        let request = URLRequest(url: url)
        let session = URLSession.shared
        let task = session.dataTask(with: request) { (data, response, error) in

            if let error = error {
                // Handle HTTP request error
            } else if let data = data {
                do {
                    // make sure this JSON is in the format we expect
                    var questions = try JSONDecoder().decode([Question].self, from: data)
                    self.questions = questions
                } catch let error as NSError {
                    print("Failed to load: \(error.localizedDescription)")
                }
                
            } else {
                // Handle unexpected error
            }
        }
        task.resume()
        
       
        
    }
}
