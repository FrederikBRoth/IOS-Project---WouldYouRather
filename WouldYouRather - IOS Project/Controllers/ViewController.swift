//
//  ViewController.swift
//  WouldYouRather - IOS Project
//
//  Created by user186455 on 2/21/21.
//

import UIKit

class ViewController: UIViewController {
    var defaults = UserDefaults.standard
    var statisticsArray = [Statistic]()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        if let data = defaults.object(forKey: "statistics") as? Data {
            let decoder = JSONDecoder()
            if let dataArray = try? decoder.decode([Statistic].self, from: data){
                statisticsArray = dataArray
            }
        } else {
            statisticsArray.append(Statistic(question: "", answer: ""))
            let encoder = JSONEncoder()
            if let encoded = try? encoder.encode(statisticsArray) {	
                defaults.set(encoded, forKey: "statistics")
            }
        }

        
        
        
        print(statisticsArray)
        UserDefaults.standard.synchronize()
        // Do any additional setup after loading the view.
    }
    
    func resetDefaults() {
        let defaults = UserDefaults.standard
        let dictionary = defaults.dictionaryRepresentation()
        dictionary.keys.forEach { key in
            defaults.removeObject(forKey: key)
        }
    }

}

