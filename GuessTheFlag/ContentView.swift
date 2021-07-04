//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Xun Ruan on 2021/7/3.
//

import SwiftUI

struct ContentView: View {
    @State var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"]
    @State var correctAnswerIndex = Int.random(in: 0...2)
    @State var scoreTitle = ""
    @State var isShowingScore = false
    var body: some View {
      
        ZStack{
            // .edgeIgnoringSafeArea(.all) or ignoringSafeArea(edge: .all)
            Color.blue.edgesIgnoringSafeArea(.all)
            VStack(spacing: 30){
                VStack{
                    Text("Tag the flag of ").foregroundColor(.white)
                    Text(countries[correctAnswerIndex]).foregroundColor(.white)
                
                }
                
                ForEach(0..<3){ number in
                    Button(action: {FlagTapped(number: number)}){
                        Image(countries[number]).renderingMode(.original)
                    }
                }
                
                    
            }
//            
            
        }.alert(isPresented: $isShowingScore){
            Alert(title: Text(scoreTitle), message: Text(""), dismissButton: .default(Text("Continue?")){
                askQuestion()
            })
        }
        
    }
    
    func FlagTapped(number: Int){
        if number == correctAnswerIndex{
            scoreTitle = "True"
        }
        else{
            scoreTitle = "Wrong"
        }
        isShowingScore = true
    }
    
    func askQuestion(){
        countries.shuffle()
        correctAnswerIndex = Int.random(in: 0...2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
