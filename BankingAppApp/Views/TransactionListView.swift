//
//  TransactionListView.swift
//  BankingAppApp
//
//  Created by Роман Елфимов on 09.10.2021.
//

import SwiftUI

struct TransactionListView: View {
    
    @Binding var currentIndex: Int
    @ObservedObject var cardManager: CardManager
    
    var body: some View {
        ScrollView{
            LazyVStack {
                ForEach(getListHeaders(), id: \.self) { date in
                    ListHeader(title: self.cardManager.getModifiedDate(date: date))
                    
                    ForEach(getTransactions(date: date), id: \.self) { transaction in
                        TransactionListRow(transaction: transaction, isLast: cardManager.lastTransactionId == transaction.id)
                    }
                }
            }
        }
    }
    
    
    // MARK: - Helper Functions
    
    func getTransactions(date: String) -> [TransactionItem] {
        return self.cardManager.getTransactions(for: date, number: cards[currentIndex].number)
    }
    
    func getListHeaders() -> [String] {
        return cardManager.getUniqueDates(for: cards[currentIndex].number)
    }
}

