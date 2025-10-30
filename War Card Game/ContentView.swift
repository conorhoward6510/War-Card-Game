//
//  ContentView.swift
//  War Card Game
//
//  Created by Conor Howard on 30/10/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background-cloth")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack(spacing: 24) {
                    Image("back")
                        .resizable()
                        .aspectRatio(64/89, contentMode: .fit)
                        .frame(maxWidth: 160)

                    Image("back")
                        .resizable()
                        .aspectRatio(64/89, contentMode: .fit)
                        .frame(maxWidth: 160)
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 24)
                
                Spacer()
                
                Button {
                    print("Deal Pressed")
                } label: {
                    Image("button")
                        .shadow(radius: 15)
                }

                Spacer()
                
                HStack(alignment: .firstTextBaseline, spacing: 40) {
                    
                    VStack {
                        Text("Player")
                            .bold()
                        Text("0")
                    }
                    
                    VStack {
                        Text("CPU")
                            .bold()
                        Text("0")
                    }
                }
                .foregroundStyle(.white)
                .font(.largeTitle)
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
