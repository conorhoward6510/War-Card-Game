//
//  ContentView.swift
//  War Card Game
//
//  Created by Conor Howard on 30/10/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerScore = 0
    @State var cpuScore = 0
    @State var playerCard: Int?
    @State var cpuCard: Int?
    
    func dealCards() {
        
        playerCard = Int.random(in: 2...14)
        cpuCard = Int.random(in: 2...14)
        
        guard let playerCard, let cpuCard else {return}
        
        if playerCard > cpuCard {
            playerScore += 1
        } else if cpuCard > playerCard {
            cpuScore += 1
        }
        
    }
    
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
                    Image(playerCard != nil ? "card\(playerCard!)" : "back")
                        .resizable()
                        .aspectRatio(64/89, contentMode: .fit)
                        .frame(maxWidth: 160)

                    Image(cpuCard != nil ? "card\(cpuCard!)" : "back")
                        .resizable()
                        .aspectRatio(64/89, contentMode: .fit)
                        .frame(maxWidth: 160)
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 24)
                
                Spacer()
                
                Button {
                    print("Deal Pressed")
                    dealCards()
                } label: {
                    Image("button")
                        .shadow(radius: 15)
                }

                Spacer()
                
                HStack(alignment: .firstTextBaseline, spacing: 40) {
                    
                    VStack {
                        Text("Player")
                            .bold()
                        Text("\(playerScore)")
                    }
                    
                    VStack {
                        Text("CPU")
                            .bold()
                        Text("\(cpuScore)")
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
