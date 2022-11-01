//
//  MenuHeaderView.swift
//  BankingAppApp
//
//  Created by Роман Елфимов on 09.10.2021.
//

import SwiftUI

struct MenuHeaderView: View {
    
    let title: String
    let imageName: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.system(size: 24))
                .bold()
            
            
            Spacer()
            
            Button(action: {
                // делаем свойство cardManager; делаем в этом файле метод, которые реверсирует список транзакций; вызываем метод тут
                // (как в TransactionListView)
            }) {
                Image(systemName: imageName)
                    .padding(.all, 20)
            }
        }
        .foregroundColor(.white)
        .padding(.leading, 20)
        .padding(.trailing, 20)
    }
}

