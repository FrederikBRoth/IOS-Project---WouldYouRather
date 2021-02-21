//
//  StatisticsController.swift
//  WouldYouRather - IOS Project
//
//  Created by user186455 on 2/21/21.
//
import Foundation
import UIKit


class StatisticsController: UITableViewController {
    var statisticsHandler: StatisticsHandler!
    var statistics: [Statistic]!
    @IBOutlet weak var statisticsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        statisticsHandler = StatisticsHandler()
        statisticsHandler.testTableView()
        statistics = statisticsHandler.statistics
        
        statisticsTableView.dataSource = self
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

}

extension StatisticsController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return statistics.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let statistic = statistics[indexPath.item]
        let cell = tableView.dequeueReusableCell(withIdentifier: "statisticCell", for: indexPath) as! StatisticsTableViewCell
        cell.questionText.text = statistic.question
        cell.answerText.text = statistic.answer
        return cell
    }
    
}
