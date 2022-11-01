//
//  CardInfoView.swift
//  BankingAppApp
//
//  Created by Роман Елфимов on 09.10.2021.
//

import SwiftUI

// Информация по карте на Detail Screen

struct CardInfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            ProgressView()
            
            HStack(alignment: .firstTextBaseline, spacing: 0) {
                Text("$")
                    .font(.system(size: 30, weight: Font.Weight.bold, design: Font.Design.rounded))
                    .foregroundColor(ColorConstants.secondary)
                
                Text("6500")
                    .font(.system(size: 40, weight: Font.Weight.bold, design: Font.Design.rounded))
                    .foregroundColor(.white)
                    .padding(.leading, 10)
                
                Text(".99")
                    .font(.system(size: 20, weight: Font.Weight.bold, design: Font.Design.rounded))
                    .foregroundColor(ColorConstants.secondary)
            }
            
            HStack(alignment: .firstTextBaseline, spacing: 20) {
                VStack(alignment: .leading, spacing: 30) {
                    Image(systemName: "creditcard.fill")
                    Image(systemName: "banknote.fill")
                    Image(systemName: "dot.radiowaves.right")
                }.foregroundColor(ColorConstants.secondary)
                
                VStack(alignment: .leading, spacing: 24) {
                    Text("Bank Card")
                    Text("Bank Account")
                    Text("Pay")
                }.foregroundColor(.white)
            }
        }
    }
}


