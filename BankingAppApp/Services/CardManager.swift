//
//  CardManager.swift
//  BankingAppApp
//
//  Created by Роман Елфимов on 09.10.2021.
//

import SwiftUI

class CardManager: ObservableObject {
    
    let currentDateString = "12 Jan 2020"
    
    var lastTransactionId = UUID()
    
    @Published var expensesValue = expenses
    
    var lastSelectedExpense = -1
    
    func getUniqueDates(for cardNumber: String) -> [String] {
        var dates: [String] = []
        var lastDate = ""
        
        for transaction in transactions {
            if transaction.card == cardNumber && transaction.date != lastDate {
                dates.append(transaction.date)
                lastDate = transaction.date
            }
        }
        
        return dates
    }
    
    
    // Форматируем дату - Today/Yesterday
    func getModifiedDate(date: String) -> String {
        var modifiedDate = date
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MM yyyy"
        
        if let currentDate = dateFormatter.date(from: currentDateString) {
            if let givenDate = dateFormatter.date(from: date) {
                let difference = Calendar.current.dateComponents([.day], from: currentDate, to: givenDate)
                
                if abs(difference.day!) == 0 {
                    modifiedDate = "Today"
                } else if abs(difference.day!) == 1 {
                    modifiedDate = "Yesterday"
                }
            }
        }
        
        return modifiedDate
    }
    
    
    func getTransactions(for date: String, number: String) -> [TransactionItem] {
        var selectedTransactions = [TransactionItem]()
        
        for transaction in transactions {
            if transaction.date == date && transaction.card == number {
                selectedTransactions.append(transaction)
            }
        }
        
        if selectedTransactions.count > 0 {
            lastTransactionId = selectedTransactions.last!.id
        }
        
        return selectedTransactions
    }
    
    
    // Получаем самую большую трату
    func getMaxExpense() -> Float {
        return expenses.map{ $0.amount }.max()!
    }
    
    
    // Выбранная трата
    func selectedExpense(expense: Expense) {
        if let foundIndex = expensesValue.firstIndex(where: {$0.id == expense.id}) {
            expensesValue[foundIndex].selected.toggle()
            
            if foundIndex == lastSelectedExpense {
                lastSelectedExpense == -1
            } else {
                if lastSelectedExpense != -1 {
                    expensesValue[lastSelectedExpense].selected.toggle()
                }
                
                lastSelectedExpense = foundIndex
            }
        }
    }
    
    
    func getExpenseDateBaseOnHeight(maxHeight: CGFloat) -> [CGFloat] {
        var heights = [CGFloat]()
        let max = getMaxExpense()
        
        for expense in expensesValue {
            let fraction: CGFloat = CGFloat(expense.amount / max)
            let barHeight = maxHeight - CGFloat(fraction * maxHeight)
            
            heights.append(barHeight)
        }
        
        return heights
    }
}
