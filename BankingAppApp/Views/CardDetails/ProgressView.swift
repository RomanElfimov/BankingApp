//
//  ProgressView.swift
//  BankingAppApp
//
//  Created by Роман Елфимов on 09.10.2021.
//

import SwiftUI

struct ProgressView: View {
    var body: some View {
        ZStack {
            // Completense circle on DetailView
            Circle() // background circle
                .stroke(lineWidth: 4.0)
                .fill(ColorConstants.border)
                .frame(width: 50, height: 50)
            
            Circle() // progress circle
                .trim(from: 0.0, to: 3/5)
                .stroke(style: StrokeStyle(lineWidth: 4.0, lineCap: .round))
                .fill(ColorConstants.graphLine)
                .frame(width: 50, height: 50)
                .rotationEffect(.degrees(-90))
            
            Text("3/5")
                .font(.system(size: 14.0))
                .bold()
                .foregroundColor(.white)  
        }
    }
}


