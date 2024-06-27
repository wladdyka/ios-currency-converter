//
//  ExchangeRate.swift
//  currency-converter
//
//  Created by Vlad M on 27.06.2024.
//

import SwiftUI

struct ExchangeRate: View {
    @State var leftImage: ImageResource
    @State var rightImage: ImageResource
    @State var desc: String
    
    var body: some View {
        HStack {
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            Text(desc)
            
            
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

#Preview {
    ExchangeRate(leftImage: .goldpiece, rightImage: .goldpenny, desc: "Silver penny")
}
