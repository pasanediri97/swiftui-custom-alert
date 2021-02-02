//
//  ContentView.swift
//  CustomAlert
//
//  Created by Pasan Induwara Edirisooriya on 2/2/21.
//

import SwiftUI
 
struct ContentView: View {
    @State var shown = false
    @State var btnClicked:ClickedButton = .None
    
    var body: some View {
        ZStack {
            Spacer()
            VStack{
                Button("Open") {
                    shown.toggle()
                }
            }
            Spacer()
              if shown{
                CustomAlert(title: "Error", message: "Password don't match. Please check and try again", shown: $shown, btnClicked: $btnClicked)
              }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
