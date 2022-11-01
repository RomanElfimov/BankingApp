//
//  Expense.swift
//  BankingAppApp
//
//  Created by Роман Елфимов on 08.10.2021.
//

import Foundation

struct Expense: Identifiable {
    let id = UUID()
    let month: String
    let amount: Float
    var selected: Bool = false
}
