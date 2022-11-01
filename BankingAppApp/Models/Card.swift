//
//  Card.swift
//  BankingAppApp
//
//  Created by Роман Елфимов on 08.10.2021.
//

import Foundation

struct Card: Identifiable {
    let id = UUID()
    let number: String
    let type: CardType
    let company: String
    var selected: Bool = false
    
    // Получить последние 4 цифры номера карты
    func getLastFourDigits() -> String {
        return String(number.suffix(4))
    }
}
