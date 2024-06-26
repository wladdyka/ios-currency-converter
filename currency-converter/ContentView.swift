//
//  ContentView.swift
//  currency-converter
//
//  Created by Vlad M on 18.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            // background image
            
            VStack {
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                HStack {
                    // left conversion section
                    VStack {
                        
                        HStack {
                            Image(.silverpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                            Text("Silver piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        
                        Text("Textfield")
                            .foregroundStyle(.white)
                    }
                
                    // equal sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                    
                    // right conversion section
                    VStack {
                        // currency
                        HStack {
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                            Image(.goldpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        
                        Text("Textfield")
                            .foregroundStyle(.white)
                    }
                       
                }
                
                Spacer()
                
                Image(systemName: "info.circle.fill")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
            }
            //.border(.blue)
        }
    }
}

#Preview {
    ContentView()
}
