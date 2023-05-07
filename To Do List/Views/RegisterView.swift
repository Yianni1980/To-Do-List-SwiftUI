//
//  RegisterView.swift
//  To Do List
//
//  Created by ioannis on 1/5/23.
//

import SwiftUI

struct RegisterView: View {
    @StateObject  var viewModel = RegisterViewViewModel()
    var body: some View {
        
        
        VStack {
            //Header
            HeaderView(title: "Register", subtitle: "Start organazing todos", angle: -15, background: .orange)
            Form {
                TextField("Full Name",text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email Address",text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                    .autocapitalization(.none)


                SecureField("Password",text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Register", background: .green, action: {
                    //Attemp to Register
                    viewModel.register()
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
