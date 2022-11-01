//
//  ListHeader.swift
//  BankingAppApp
//
//  Created by Роман Елфимов on 09.10.2021.
//

import SwiftUI

struct ListHeader: View {
    
    let title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.caption)
                .foregroundColor(ColorConstants.secondary)
                .padding(.leading, 20)
            
            Spacer()
        }
    }
}


