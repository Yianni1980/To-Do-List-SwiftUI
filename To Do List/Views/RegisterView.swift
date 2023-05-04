//
//  RegisterView.swift
//  To Do List
//
//  Created by ioannis on 1/5/23.
//

import SwiftUI

struct RegisterView: View {
    @State private  var email = ""
    @State  private  var password = ""
    @State   private var name = ""
    var body: some View {
        
        
        VStack {
            //Header
            HeaderView(title: "Register", subtitle: "Start organazing todos", angle: -15, background: .orange)
            Form {
                TextField("Full Name",text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email Address",text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()

                SecureField("Password",text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Register", background: .green, action: {
                    //Attemp to Register
                })
                .padding()
            }
            .offset(y:-50)
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
