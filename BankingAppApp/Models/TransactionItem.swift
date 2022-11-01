//
//  TransactionItem.swift
//  BankingAppApp
//
//  Created by Роман Елфимов on 08.10.2021.
//

import Foundation

struct TransactionItem: Identifiable, Hashable {
    let id = UUID()
    let date: String
    let time: String
    let company: String
    let service: String
    let card: String
    let amount: Float
    let type: String
}
