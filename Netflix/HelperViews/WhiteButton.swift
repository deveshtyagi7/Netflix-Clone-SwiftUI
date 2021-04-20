//
//  WhiteButton.swift
//  Netflix
//
//  Created by Devesh Tyagi on 18/04/21.
//

import SwiftUI

struct PlayButton: View {
    var text : String
    var imageName : String
    var backgroundColor : Color = Color.white
    
    var action : () -> Void
    
    var body: some View {
        Button(action: action
        , label: {
            HStack{
                Spacer()
                
                Image(systemName: imageName)
                    .font(.headline)
                   
                
                 Text(text)
                     .font(.system(size: 16))
                     .bold()
                
                Spacer()
            }
            .padding(.vertical , 6)
            .background(backgroundColor)
            .foregroundColor(backgroundColor == .white ? .black : .white)
            .cornerRadius(3.0)
        
        })
    }
}

struct PlayButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            PlayButton(text: "Play", imageName: "play.fill") {
                //
            }
        }
    }
}
