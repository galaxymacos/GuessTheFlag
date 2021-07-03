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
            // Make only the text go red
//            ZStack{
//                Text("My Content")
//            }.background(Color.red)
            
//            ZStack{
//                Text("My Content").background(Color.red)
//            }
            
            // Make background go red
            ZStack{
                // Turn the whole screen to red
//                Color.red
                Color.red.frame(width: 200, height: 200)
                // make the screen black or white
//                Color.primary
                // make the screen less black or less white
                // make the color cover the safe area
                Color.secondary.edgesIgnoringSafeArea(.all)
                Text("My Content")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
