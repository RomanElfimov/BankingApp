//
//  DummyData.swift
//  BankingAppApp
//
//  Created by Роман Елфимов on 08.10.2021.
//

import Foundation

// Информация, которой будем заполнять интерфейс
// Карты
let cards = [
    Card(number: "1111222233334444", type: .Silver, company: "Visa"),
    Card(number: "0000000000000000", type: .Platinum, company: "Master"),
    Card(number: "1111111111111111", type: .Gold, company: "Amex"),
]

// Переводы
let transactions = [
    TransactionItem(date: "01 Jan 2020", time: "10:00 AM", company: "Starbucks", service: "Coffee", card: "1111222233334444", amount: 2.49, type: "Meal"),
    TransactionItem(date: "03 Jan 2020", time: "12:00 AM", company: "Apple", service: "Airpods Pro", card: "1111111111111111", amount: 2.49, type: "Shopping"),
    TransactionItem(date: "05 Jan 2020", time: "3:30 AM", company: "Google", service: "Concert Payment", card: "1111222233334444", amount: 2.49, type: "Entertaiment"),
    TransactionItem(date: "06 Jan 2020", time: "9:00 AM", company: "Apple", service: "Iphone 12", card: "0000000000000000", amount: 2.49, type: "Shopping"),
    TransactionItem(date: "08 Jan 2020", time: "8:00 AM", company: "Netflix", service: "Subscripitons", card: "1111222233334444", amount: 2.49, type: "Shopping"),
    TransactionItem(date: "09 Jan 2020", time: "7:00 AM", company: "Amazon", service: "Video Subs", card: "1111111111111111", amount: 2.49, type: "Entertaiment"),
    TransactionItem(date: "10 Jan 2020", time: "5:00 AM", company: "Nike", service: "Shoes", card: "1111222233334444", amount: 2.49, type: "Shopping"),
    TransactionItem(date: "11 Jan 2020", time: "2:00 AM", company: "Amazon", service: "Prime", card: "0000000000000000", amount: 2.49, type: "Shopping"),
    TransactionItem(date: "12 Jan 2020", time: "11:00 AM", company: "Apple", service: "Mac Pro", card: "1111111111111111", amount: 2.49, type: "Shopping")
]

// Траты
let expenses = [
    Expense(month: "Jan", amount: 1200.99),
    Expense(month: "Feb", amount: 999.99),
    Expense(month: "Mar", amount: 300.00),
    Expense(month: "Apr", amount: 700.99),
    Expense(month: "May", amount: 145.00),
    Expense(month: "Jun", amount: 200.99)
    
]
