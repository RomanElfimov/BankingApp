//
//  TransactionListRow.swift
//  BankingAppApp
//
//  Created by Роман Елфимов on 09.10.2021.
//

import SwiftUI

// Ячейка, в которой отображется транзакция
struct TransactionListRow: View {
    
    let transaction: TransactionItem
    let isLast: Bool
    
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                ZStack {
                    Circle()
                        .fill(ColorConstants.border)
                        .frame(width: 50, height: 50)
                    
                    Image(systemName: "applelogo")
                        .foregroundColor(ColorConstants.secondary)
                }
                
                VStack {
                    Text(transaction.service)
                        .foregroundColor( .white)
                    Text(transaction.type)
                        .font(.caption)
                        .foregroundColor(ColorConstants.secondary)
                }
                .padding(.leading, 10)
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    Text("- \(String(format: "%0.2f", transaction.amount)) USD")
                        .foregroundColor(.white)
                    Text(transaction.time)
                        .font(.caption)
                        .foregroundColor(ColorConstants.secondary)
                }
            }
            
            Divider()
                .background(ColorConstants.secondary)
                .opacity(isLast ? 0.0 : 1.0)
                .padding(.leading, 50)
                .padding(.bottom, 8)
        }
        .padding([.leading, .trailing], 20)
    }
}


