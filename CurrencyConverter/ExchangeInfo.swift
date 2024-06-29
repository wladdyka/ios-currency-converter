//
//  ExchangeInfo.swift
//  currency-converter
//
//  Created by Vlad M on 27.06.2024.
//

import SwiftUI

struct ExchangeInfo: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                Text("Exchange rates")
                    .font(.largeTitle)
                    .tracking(3)
                
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title2)
                    .padding()
                
                ExchangeRate(leftImage: .goldpiece, rightImage: .goldpenny, desc: "1 Gold Piece = 4 Gold Pennies")
                ExchangeRate(leftImage: .goldpenny, rightImage: .silverpenny, desc: "1 Gold Penny = 4 Silver Pieces")
                ExchangeRate(leftImage: .silverpiece, rightImage: .silverpenny, desc: "1 Silver Piece = 4 Silver Pennies")
                ExchangeRate(leftImage: .silverpenny, rightImage: .copperpenny, desc: "1 Silver Penny = 100 Copper Pennies")
                
                Button("Done") {
                    dismiss.callAsFunction()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundColor(.white)
            }
            .foregroundColor(.black)
        }
    }
}

#Preview {
    ExchangeInfo()
}
