//
//  CardDetailView.swift
//  BankingAppApp
//
//  Created by Роман Елфимов on 10.10.2021.
//

import SwiftUI

struct CardDetailView: View {
    
    @Binding var card: Card
    @ObservedObject var cardManager: CardManager
    @State private var startAnimation = false
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(ColorConstants.primary)
            
            VStack {
                CardDetailTopBarView(card: $card)
                
                ZStack {
                    GeometryReader { geo in
                        CardView(card: card)
                            .rotationEffect(startAnimation ? Angle.degrees(90) : Angle.degrees(0))
                            .offset(x: startAnimation ? -geo.size.width / 2 : 0)
                    }.frame(height: 210)
                    
                    CardInfoView()
                        .padding(.leading, 80)
                        .opacity(startAnimation ? 1.0 : 0.0)
                        .animation(Animation.easeIn(duration: 0.5).delay(1.0))
                }
                .padding([.vertical], 30)
                
                ExpenseView(cardManager: cardManager)
                    .padding(.top, 20)
                    .padding(.bottom, 40)
                    .opacity(startAnimation ? 1.0 : 0.0)
                    .animation(Animation.easeIn(duration: 0.5).delay(1.5))
                
                Spacer()
            }
        }.onAppear {
            withAnimation(Animation.linear(duration: 1.0)) {
                startAnimation = true
            }
        }
    }
}


// Bar for Card Detail

struct CardDetailTopBarView: View {
    
    @Binding var card: Card
    
    var body: some View {
        HStack {
            Button {
                withAnimation {
                    card.selected = false
                }
            } label: {
                Image(systemName: "multiply")
                    .padding(.all, 20)
            }

            Text("card details".uppercased())
                .kerning(2.0)
                .bold()
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "slider.vertical.3")
                    .padding(.all, 20)
            }
        }
        .foregroundColor(.white)
        .padding(.top, 64)
        .padding([.bottom, .leading, .trailing], 20)
    }
}

// Expenses

struct ExpenseView: View {
    
    @ObservedObject var cardManager: CardManager
    
    var body: some View {
        VStack {
            MenuHeaderView(title: "Expenses", imageName: "ellipsis")
                .padding(.bottom, 20)
            GraphView(cardManager: cardManager)
        }
    }
}
