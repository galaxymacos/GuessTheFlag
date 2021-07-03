//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Xun Ruan on 2021/7/3.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            
            Button("Tap me!") {
                print("Button was tapped")
            }
            // Same thing
            Button(action: {
                print("Button was tapped")
            }){
                HStack(spacing: 10){
                    // these two will use the pencil picture from the project directory
//                    Image("pencil")
//                    Image(decorative: "pencil")
                    Image(systemName: "pencil").renderingMode(.original)
                    Text("Tap me!")
                }
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
