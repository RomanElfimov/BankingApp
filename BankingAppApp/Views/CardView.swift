//
//  CardView.swift
//  BankingAppApp
//
//  Created by Роман Елфимов on 09.10.2021.
//

import SwiftUI

struct CardView: View {
    
    let card: Card
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 40)
                .fill(ColorConstants.cardBackground)
            
            // Название, Тип карты: Visa, Platinum
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text(card.company.uppercased())
                            .font(.system(size: 14))
                            .bold()
                            .kerning(2.0)
                        
                        Text(card.type.rawValue.uppercased())
                            .font(.system(size: 14))
                            .bold()
                            .kerning(2.0)
                    }
                    
                    Spacer()
                    
                    Text(card.company.uppercased())
                        .font(.system(size: 24, weight: Font.Weight.heavy))
                        .italic()
                }
                
                Spacer()
                
                // Номер карты
                HStack {
                    ForEach(0..<3) { i in
                        Text("****")
                            .kerning(3.0)
                        
                        Spacer()
                    }
                    
                    Text(card.getLastFourDigits())
                        .kerning(3.0)
                }
            }
            .padding(.all, 40)
        }
        .foregroundColor(.white)
        .padding(.leading, 20)
        .padding(.trailing, 20 )
    }
}


