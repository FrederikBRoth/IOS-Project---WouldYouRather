//
//  StatisticHandler.swift
//  WouldYouRather - IOS Project
//
//  Created by user186455 on 2/21/21.
//

import Foundation
class StatisticsHandler {
    var statistics = [Statistic]()
    
    func testTableView() {
        statistics.append(Statistic(question: "Pork or Beef?", answer: "Beef"))
        statistics.append(Statistic(question: "Carrots or cucumber?", answer: "Carrots"))
        statistics.append(Statistic(question: "TV or videogames?", answer: "Videogames"))
        statistics.append(Statistic(question: "Ass or tits?", answer: "Ass"))
        statistics.append(Statistic(question: "Ass or tits?", answer: "Ass"))
        statistics.append(Statistic(question: "Ass or tits?", answer: "Ass"))
        statistics.append(Statistic(question: "Ass or tits?", answer: "Ass"))
        statistics.append(Statistic(question: "Ass or tits?", answer: "Ass"))
    }
}

