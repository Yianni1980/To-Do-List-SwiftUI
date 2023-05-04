//
//  TLButton.swift
//  To Do List
//
//  Created by ioannis on 4/5/23.
//

import SwiftUI

struct TLButton: View {
    let title:String
    let background:Color
    let action:() -> Void
    var body: some View {
        Button {
            //Action
            
            
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                Text(title)
                    .foregroundColor(.white)
                    .bold()
                
            }
            
        }
        
    }
    
}

struct TLButton_Previews: PreviewProvider {
    static var previews: some View {
        TLButton(title: "Login in", background: .brown) {
            //Action
        }
    }
}
