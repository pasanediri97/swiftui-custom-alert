//
//  CustomAlert.swift
//  CustomAlert
//
//  Created by Pasan Induwara Edirisooriya on 2/2/21.
//

import SwiftUI

enum ClickedButton{
    case OK
    case Cancel
    case None
}


struct CustomAlert: View {
    let title:String
    let message:String
    
    @Binding var shown:Bool
    @Binding var btnClicked:ClickedButton
    
    var body: some View {
        
        ZStack {
            Color.black.opacity(shown ? 0.4 : 1).edgesIgnoringSafeArea(.all)
            
            VStack{
                Text(title)
                    .padding(.top, 20.0)
                Text(message)
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
                    .padding(.top, 20.0)
                    .padding(.horizontal, 25.0)
                Button("OK") {
                    btnClicked = .OK
                    shown.toggle()
                }
                .padding(.vertical, 30.0)
            }
            .cornerRadius(14.0)
            .background(
                RoundedRectangle(cornerRadius: 14, style: .continuous)
                    .fill(Color.white)
            )
            .frame(width: UIScreen.main.bounds.width - 100, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .clipped()
        }
    }
}

struct CustomAlert_Previews: PreviewProvider {
    static var previews: some View {
        CustomAlert(title: "Error", message: "Password don't match. Please check and try again", shown: .constant(false), btnClicked: .constant(.OK))
    }
}
