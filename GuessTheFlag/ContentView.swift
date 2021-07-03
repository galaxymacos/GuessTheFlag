//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Xun Ruan on 2021/7/3.
//

import SwiftUI

struct ContentView: View {
    @State var isShowingAlert = false
    let myAlert = Alert(title: Text("New level"), message: Text("You have just unlocked new levels"), dismissButton: .default(Text("Ok")))
    var body: some View {
        Button("Press to show alert"){
            isShowingAlert = true
            // "$" is used because SwiftUI will automatically set showingAlert back to false when the alert is dismissed.
        }.alert(isPresented: $isShowingAlert){
            Alert(title: Text("New level"), message: Text("New level is ready"), dismissButton: .default(Text("Ok")))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
