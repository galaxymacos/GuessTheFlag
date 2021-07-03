//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Xun Ruan on 2021/7/3.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        RadialGradient(colors: [.white, .black], center: .center, startRadius: 0, endRadius: 200)
        
//        LinearGradient(colors: [.white, .black], startPoint: .top, endPoint: .bottom).ignoresSafeArea(edges: .all)
        
        AngularGradient(colors: [.red, .yellow, .green, .blue, .purple, .red], center: .center)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
