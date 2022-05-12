//
//  ContentView.swift
//  War
//
//  Created by Justin Vaughn on 3/15/22.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "card5"
    @State var cpuCard = "card9"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack() {
            Image("background")
                .ignoresSafeArea()
            
            
            VStack() {
                
                Spacer()
                Image("logo")
                Spacer()
                
                HStack() {
                    
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                    
                }
                
                Spacer()
                Button(action: {
                    
                    //  generates random number 2-14
                    let playerRandom = Int.random(in: 2...14)
                    let cpuRandom = Int.random(in: 2...14)
                    
                    //  update cards
                    playerCard = "card" + String(playerRandom)
                    cpuCard = "card" + String(cpuRandom)
                    
                    //  update score
                    if playerRandom > cpuRandom {
                        playerScore += 1
                    } else if cpuRandom > playerRandom {
                        cpuScore += 1
                    }
                }, label: {
                    Image("dealbutton")
                })
                Spacer()
                
                HStack() {
                    
                    Spacer()
                    
                    VStack() {
                        
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(
                                .largeTitle)
                        
                    }
                    
                    Spacer()
                    VStack() {
                        
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(
                                .largeTitle)
                        
                    }
                    
                    Spacer()
                    
                }.foregroundColor(Color.white)
                
                Spacer()
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewInterfaceOrientation(.portrait)
            
        }
    }
}
