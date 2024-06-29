//
//  SelectCurrency.swift
//  currency-converter
//
//  Created by Vlad M on 27.06.2024.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    @Binding var topCurrency: Currency
    @Binding var bottomCurrency: Currency
    
    var body: some View {
        ZStack {
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                Spacer()
                
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                    .foregroundStyle(.black)
                
                IconGrid(currency: $topCurrency)
                
                Spacer()
                
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                    .foregroundStyle(.black)
                
                IconGrid(currency: $bottomCurrency)
                
                Spacer()
                
                Button("Done") {
                    dismiss.callAsFunction()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundColor(.white)
            }
            .padding()
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    SelectCurrency(topCurrency: .constant(.copperPenny), bottomCurrency: .constant(.silverPenny))
}
