//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Xun Ruan on 2021/7/3.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            
            HStack{
                Text("1 2 3")
            }
            HStack{
                Text("4 5 6")
            }
            HStack{
                Text("7 8 9")
            }
            
            
            // Stack things together
            ZStack(alignment: .top){    // alignment is used when you have two different-size thing in stack
                Text("hey")
                Text("man")
            }
            // Push away items
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()Spacer()
    }
}
