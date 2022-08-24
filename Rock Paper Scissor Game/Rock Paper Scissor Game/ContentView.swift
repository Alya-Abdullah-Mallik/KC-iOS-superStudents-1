//
//  ContentView.swift
//  Rock Paper Scissor Game
//
//  Created by Alya Mallik on 24/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var player1Points = 0
    @State var player2Points = 0
    @State var player1Image = "rock"
    @State var player2Image = "rock"

    var body: some View {
        
        ZStack{
            
            Color.gray.opacity(0.1)
                .ignoresSafeArea()

        VStack{
            
            Text("Player 1")
                .font(.title3.bold())

        Text("Points : \(player1Points)")
                .font(.title3.bold())
            
          Image(player2Image)
                
            
        Image(player1Image)
                .onTapGesture {
                    let player1Tap = Int.random(in: 1...3)
                    player1Image = imageGenarator(num: player1Tap)
                    
                    let player2Tap = Int.random(in: 1...3)
                    player2Image = imageGenarator(num: player2Tap)
                    
                    calculatePoints(player1: player1Tap, player2: player2Tap)
                }

            Text("Player 2")
                .font(.title3.bold())

        Text("Points : \(player2Points)")
                    .font(.title3.bold())
    
    }
        }
    }
    func imageGenarator( num:Int) -> String {
        if num == 1 {
            return "rock"
        } else if num == 2{
            return "paper"
        } else if num == 3{
            return "scissor"
        }
        return "rock"
    }
    func calculatePoints( player1:Int,  player2:Int) {
        // reminder : 1=rock 2=paper 3=scissors
        if player1 == 1 && player2 == 2 {
           player2Points = player2Points + 1
        }
        if player1 == 1 && player2 == 3 {
            player1Points = player1Points + 1
        }
        if player1 == 2 && player2 == 1 {
            player1Points = player1Points + 1
        }
        if player1 == 2 && player2 == 3 {
            player2Points = player2Points + 1
        }
        if player1 == 3 && player2 == 1 {
            player2Points = player2Points + 1
        }
        if player1 == 3 && player2 == 2 {
            player1Points = player1Points + 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
